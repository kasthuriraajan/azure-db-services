import ballerina/io;
import ballerina/jdbc;
import ballerina/config;
import ballerina/sql;

public function main() {
    string fname = "John";
    string lname = "Silva";
    string country = "SriLanka";
    jdbc:Client jdbcClient = checkpanic new (config:getAsString("URL"),
        config:getAsString("USER_NAME"), config:getAsString("PASSWORD"));

    //Insert Users into db
    sql:ExecutionResult insertResult = insertUser(jdbcClient, fname, lname, country);
    io:println(insertResult);
    //Get All users from db
    getAllUser(jdbcClient);
}

function insertUser(jdbc:Client jdbcClient, string fname, string lname, string country) returns sql:ExecutionResult{
    sql:ParameterizedQuery insertQuery = `INSERT INTO userdetail(FirstName, LastName, Country) 
            VALUES ( ${fname}, ${lname}, ${country})`;
    sql:ExecutionResult result = checkpanic jdbcClient->execute(insertQuery);
    return result;
}

function getAllUser(jdbc:Client jdbcClient){
    stream<record{}, error> resultStream = jdbcClient->query("Select * from userdetail");

    error? e = resultStream.forEach(function(record {} result) {
        io:println("Full User details: ", result);
        io:println("User first name: ", result["FirstName"]);
        io:println("User last name: ", result["LastName"]);
        io:println("User country: ", result["Country"]);
    });

    if (e is error) {
        io:println("ForEach operation on the stream failed!");
        io:println(e);
    }
}
