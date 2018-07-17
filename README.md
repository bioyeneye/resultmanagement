# Result Management
1. Run the rmsscript.sql 
  >but delete USE [master] GO from the file before running
2. Change the connection string in the app.config 
  >
    <connectionStrings>
      <add name="RMSEntities" connectionString="Data Source=.;Initial Catalog=RMS;Integrated Security=True" providerName="System.Data.SqlClient" />
      <add name="DefaultConnection" connectionString="Data Source=.;Initial Catalog=RMS;Persist Security Info=True;User ID=sa;Password=password1;MultipleActiveResultSets=True" providerName="System.Data.SqlClient" />
    </connectionStrings>
  change the Catalog to your db name
  Data Source to your server instance name then you are good to go
