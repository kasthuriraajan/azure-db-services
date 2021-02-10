# Azure SQL Sample

Refer following docs to set up db in Azure portal

[https://docs.microsoft.com/en-us/azure/azure-sql/database/connect-query-java](https://docs.microsoft.com/en-us/azure/azure-sql/database/connect-query-java)

[https://docs.microsoft.com/en-us/azure/azure-sql/database/single-database-create-quickstart?tabs=azure-portal](https://docs.microsoft.com/en-us/azure/azure-sql/database/single-database-create-quickstart?tabs=azure-portal)

[https://docs.microsoft.com/en-us/azure/developer/java/spring-framework/configure-spring-data-jdbc-with-azure-sql-server?toc=/azure/azure-sql/toc.json&bc=/azure/bread/toc.json](https://docs.microsoft.com/en-us/azure/developer/java/spring-framework/configure-spring-data-jdbc-with-azure-sql-server?toc=/azure/azure-sql/toc.json&bc=/azure/bread/toc.json)

Set up a `ballerina.config` file with following information.
```
URL = "jdbc:sqlserver://<AZ_DATABASE_SERVER_NAME>.database.windows.net:1433;database=<DB_Name>;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30"
USER_NAME = <AZ_DB_USER>@<Your_AZ_DB_SERVER_NAME>
PASSWORD = <AZ_DB_PASSWORD>

```
