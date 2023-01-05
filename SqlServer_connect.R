library(DatabaseConnector)

DatabaseConnector::downloadJdbcDrivers(dbms = "sql server", pathToDriver = "C:/jdbc")

##
# Details for connecting to the server:
connectionDetails <-
  DatabaseConnector::createConnectionDetails(
    dbms = "sql server",
    server = "10.19.10.248",
    user = "yj125125",
    password = "qwer1234!@",
    port = "1433",
    pathToDriver = "c:/jdbc"
  )

connection <- connect(connectionDetails)


t <- querySql(connection, sql="select * from YUHS_OMOP_Voca.dbo.HIRA_mapping")

t
write.csv(t, file = "C:/jdbc/hira.csv", fileEncoding = "utf-8")

