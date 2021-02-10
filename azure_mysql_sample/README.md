# Azure SQL Sample

Refer following docs to set up db in Azure portal

[https://docs.microsoft.com/en-us/azure/mysql/connect-java](https://docs.microsoft.com/en-us/azure/mysql/connect-java)

[https://docs.microsoft.com/en-us/azure/mysql/quickstart-create-mysql-server-database-using-azure-portal](https://docs.microsoft.com/en-us/azure/mysql/quickstart-create-mysql-server-database-using-azure-portal)

[https://docs.microsoft.com/en-us/azure/mysql/connect-workbench](https://docs.microsoft.com/en-us/azure/mysql/connect-workbench)

Set up a `ballerina.config` file with following information.
```
URL = "jdbc:mysql://<AZ_DATABASE_SERVER_NAME>.mysql.database.azure.com:3306?serverTimezone=UTC"
USER_NAME = <AZ_DB_USER>@<Your_AZ_DB_SERVER_NAME>
PASSWORD = <AZ_DB_PASSWORD>


```
