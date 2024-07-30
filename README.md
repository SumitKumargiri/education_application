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


# Structure of Angular side Ui that means main view  

![image](https://github.com/user-attachments/assets/261f44e0-bab6-4dc0-a803-e4c909dc95b4)
![image](https://github.com/user-attachments/assets/84c6aa89-e74a-4500-816d-1fa214c7c5f5)
![image](https://github.com/user-attachments/assets/aadec815-2837-4b5f-87d8-38b7e564314c)
![image](https://github.com/user-attachments/assets/2fea251d-2b0c-4e60-bb0d-68577277cede)
![image](https://github.com/user-attachments/assets/2477aa51-6e97-4f91-9669-fc1ce0e7ee48)
![image](https://github.com/user-attachments/assets/1b234084-aeb9-441b-beba-f849371a5b31)

# Structure of Login Page for all types
![image](https://github.com/user-attachments/assets/929b36c6-da6a-4e7c-a1df-b52e01f0baaf)

# Structure of Register Page for all types
![image](https://github.com/user-attachments/assets/d6c67701-0df8-4155-8964-797ec65de949)

# Structure of Admin Dashboard
![image](https://github.com/user-attachments/assets/c9068390-98f4-4489-877f-9e3185dc0bc1)
![image](https://github.com/user-attachments/assets/ec611d91-94e0-4086-91b5-c6794d82a791)


# Structure of Teacher Dashboard
![image](https://github.com/user-attachments/assets/6fd0cc84-3f55-48da-8c87-a44c6bf8e049)
![image](https://github.com/user-attachments/assets/c4a5d60b-c556-407a-a8bd-545d214a0d78)

# Perform the crud operation by the teacher
![image](https://github.com/user-attachments/assets/b4be37a8-2ff2-4096-9acf-13c1ca2a9083)

# Uploading process by the teacher
![image](https://github.com/user-attachments/assets/e06a6bf3-7ef9-4c51-ba9f-3f2deab7be0a)

# View the attendance and mark the attendance of the student by the teacher
![image](https://github.com/user-attachments/assets/a5ae5b2f-6ee4-4c3f-ba8e-2ec32fa3893e)

# Marks student attendance
![image](https://github.com/user-attachments/assets/05888131-c891-43bf-aaa5-454d64fde6b3)

# view the teacher on which date students are present and absent
![image](https://github.com/user-attachments/assets/30db50ca-e2b1-44cf-803a-b1c4d4dc6641)

# Add the Marks by the teacher
![image](https://github.com/user-attachments/assets/040dbf12-edf0-4caa-a2ef-d1c751218522)

# Structure of Student Dashboard
![image](https://github.com/user-attachments/assets/715ddae9-7ed7-44a3-b744-e139f3b1f4ec)

# View attendance by student according to the username
![image](https://github.com/user-attachments/assets/6f43e920-6b98-4b94-88fb-e901375f93c1)

# View the marks
![image](https://github.com/user-attachments/assets/72e7613c-97f2-4405-abe4-268e15aef68d)

# View assignment and read and download the assignment also
![image](https://github.com/user-attachments/assets/1fe610ac-ddd3-441b-ac04-f7223f974127)



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
