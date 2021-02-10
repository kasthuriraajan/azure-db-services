# Azure PostgreSQL Sample

Refer following docs to set up db in Azure portal

[https://docs.microsoft.com/en-us/java/api/overview/azure/postgresql?view=azure-java-stable](https://docs.microsoft.com/en-us/java/api/overview/azure/postgresql?view=azure-java-stable)

[https://docs.microsoft.com/en-us/azure/postgresql/tutorial-design-database-using-azure-portal#create-an-azure-database-for-postgresql](https://docs.microsoft.com/en-us/azure/postgresql/tutorial-design-database-using-azure-portal#create-an-azure-database-for-postgresql)

[https://docs.microsoft.com/en-us/azure/postgresql/connect-java](https://docs.microsoft.com/en-us/azure/postgresql/connect-java)

Set up a `ballerina.config` file with following information.
```
CONNECTION_STRING = "jdbc:postgresql://<Your_AZ_DB_SERVER_NAME>.postgres.database.azure.com:5432/<AZ_DB_NAME>?user=<AZ_DB_USER>@<Your_AZ_DB_SERVER_NAME>&password=<AZ_DB_PASSWORD>&ssl=false"

```
