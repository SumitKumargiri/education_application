# Education_Application
<p align="center">
  <span>English</span>
  Creating this website using .Net, Angular 17, MySQL
</p>

A ``.Net 8.0`` WebApi Education_Application/ template project. MediatR, Swagger, ~~AutoMapper~~ Mapster, Serilog, and more have been implemented. 

The goal of this project is to be a kickstart to your .Net WebApi, implementing the most commonly used patterns
and technologies for a restful API in .net, making your work easier.

# How to run
- Use this template(GitHub) or clone/download it to your local workplace.
- Download the latest .Net SDK and Visual Studio/Code/Rider.

## Standalone
1. You may need a running instance of Postgres, with appropriate migrations initialized.
	- You can run just the DB on docker. For that, run the following command: ``docker-compose up -d db-server``. By doing that, the application will be able to reach the container of the Mysql server.
2. Go to the src/Boilerplate. Api folder and run ``dotnet run``, or, in Visual Studio set the api project as startup and run as console/docker/IIS.
3. Visit https://localhost:7166/swagger/index.html to access the application's swagger.

## Docker
1. Run ``docker-compose up -d`` in the root directory, or, in Visual Studio, set the docker-compose project as startup and run. This should start the application and mysql.
 - 1. For docker-compose, you should run this command on the root folder: ``dotnet dev-certs https -ep https/aspnetapp.pfx -p your password``
		Replace "your password" with something else in this command and the docker-compose.override.yml file.
This creates the HTTPS certificate.
2. Visit https://localhost:7166/swagger/index.html to access the application's swagger.

## Running tests
**Important**: You need to have docker up and running. The integration tests will launch a Postgres container and use it to test the API.

In the root folder, run ``dotnet test``. This command will try to find all test projects associated with the sln file.
If you are using Visual Studio, you can also access the Test Menu and open the Test Explorer, where you can see all tests and run all of them or one specifically. 

## Authentication
In this project, some routes require authentication/authorization. For that, you will have to use the ``api/identity/register`` route to create an account.
After that, you can login using the ``/api/identity/login`` without using cookies and then use the received accessToken on the lock (if using swagger) or via the Authorization header on a http request.
For more information, please take a look at the swagger documentation.

# This project contains:
- SwaggerUI
- EntityFramework
- Postgres
- Minimal apis
- Strongly Typed Ids
- Test coverage collection
- signalR
- .Net Dependency Injection
- Resource Filtering
- Response compression
- Response pagination
- CI (Github Actions)
- Authentication
- Authorization
- Unit tests
- Integration tests with test containers
- Container support with [docker](src/Boilerplate.Api/docker file) and [docker-compose](docker-compose.yml)
- OpenTelemetry support (with OLTP as default exporter)
- NuGet Central package management (CPM)

# Project Structure
1. Services
	- This folder stores your apis and any project that sends data to your users.
	1. Authentication.Api
		- This is the main api project. Here are all the controllers and initialization for the api that will be used.
	2. docker-compose
		- This project exists to allow you to run docker-compose with Visual Studio. It contains a reference to the docker-compose file and will build all the projects dependencies and run it.
2. Application
	-  This folder stores all data transformations between your api and your domain layer. It also contains your business logic.
	1. Auth
		- This folder contains the login Session implementation.
3. Domain
	- This folder contains your business models, enums and common interfaces.
	1. Boilerplate.Domain
		- Contains business models and enums.
		1. Auth
			- This folder contains the login Session Interface.
4. Interface
	- This folder contains all data access configuration, database contexts, anything that reaches for outside data.
	1. Boilerplate.Infrastructure
		- This project contains the dbcontext, entities configuration and migrations.

# Snapshot of .Net project Structure

![image](https://github.com/user-attachments/assets/a5ad4d71-6885-4c22-b878-09c89cb0080b)

# Structure of swagger API 
![image](https://github.com/user-attachments/assets/9f1a1011-9604-4c8f-bfc8-ed57c88737f9)
![image](https://github.com/user-attachments/assets/3ecb87b5-c593-4031-83ef-aa6e2a1bca2e)
![image](https://github.com/user-attachments/assets/e7415429-ea86-4335-af3f-9cf6da5f9f67)
![image](https://github.com/user-attachments/assets/7ef59001-541b-4b08-b751-45525c96b882)
![image](https://github.com/user-attachments/assets/0ab44d1a-580f-487d-a897-69549f093880)


# Adopting to your project
1. Remove/Rename all hero-related stuff to your needs.
2. Rename solutions, projects, namespaces, and rulesets to your use.
3. Change the dockerfile and docker-compose.yml to your new csproj/folder names.
3. Give this repo a star!

# Migrations
To run migrations on this project, you need the dotnet-ef tool.
- Run ``dotnet tool install --global dotnet-ef``
- Now, depending on your OS, you have different commands:
    1. For windows: ``dotnet ef migrations add InitialCreate --startup-project .\src\Boilerplate.Api\ --project .\src\Boilerplate.Infrastructure\``
    2. For linux/mac: ``dotnet ef migrations add InitialCreate --startup-project ./src/Boilerplate.Api/ --project ./src/Boilerplate.Infrastructure/``
# If you like it, give it a Star
If this template was useful for you, or if you learned something, please give it a Star! :star:

# Thanks
This project has great influence on https://github.com/lkurzyniec/netcore-boilerplate and https://github.com/EduardoPires/EquinoxProject. If you have time, please visit these repos, and give them a star, too!

# About
This boilerplate/template was developed by Yan Pitangui under [MIT license](LICENSE).
