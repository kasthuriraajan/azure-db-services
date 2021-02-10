import ballerina/io;
import ballerina/jdbc;
import ballerina/config;
import ballerina/sql;

public function main() {
    string fname = "Rajeev";
    string lname = "Menan";
    string country = "India";
    jdbc:Client jdbcClient = checkpanic new (config:getAsString("CONNECTION_STRING"));

    //Insert Users into db
    sql:ExecutionResult insertResult = insertUser(jdbcClient, fname, lname, country);
    io:println(insertResult);
    //Get All users from db
    getAllUser(jdbcClient);
}

function insertUser(jdbc:Client jdbcClient, string fname, string lname, string country) returns sql:ExecutionResult{
    sql:ParameterizedQuery insertQuery = `INSERT INTO userinfo(firstname, lastname, country) 
            VALUES ( ${fname}, ${lname}, ${country})`;
    sql:ExecutionResult result = checkpanic jdbcClient->execute(insertQuery);
    return result;
}

function getAllUser(jdbc:Client jdbcClient){
    stream<record{}, error> resultStream = jdbcClient->query("Select * from userinfo");

    error? e = resultStream.forEach(function(record {} result) {
        io:println("Full User details: ", result);
        io:println("User first name: ", result["firstname"]);
        io:println("User last name: ", result["lastname"]);
        io:println("User country: ", result["country"]);
    });

    if (e is error) {
        io:println("ForEach operation on the stream failed!");
        io:println(e);
    }
}
