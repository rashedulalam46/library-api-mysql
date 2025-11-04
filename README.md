# Library API (MySQL + Docker)

A .NET Core / .NET 9 Web API for managing a library system, backed by **MySQL**.
This project is structured with clean architecture (Domain, Application, Infrastructure, API) and supports basic CRUD operations on books, authors, categories, publishers, etc.

---

## Features

- CRUD operations for books, authors, borrowers, etc.  
- Dependency injection and separation of layers (Domain, Application, Infrastructure)  
- Repository and unit-of-work patterns  
- Exception handling and centralized error responses  
- Automatic mapping using AutoMapper  
- DTOs (Data Transfer Objects) to decouple domain models from external API  
- Swagger / OpenAPI support for API documentation  

---

## Technologies

- .NET Core (.NET 9)  
- C#  
- MySQL (using Pomelo or MySql.Data provider)  
- Entity Framework Core (for MySQL)  
- AutoMapper  
- FluentValidation
- Swagger / Swashbuckle  

---

## Setup & Installation

### Prerequisites

- [.NET SDK](https://dotnet.microsoft.com/download) (version matching the project)  
- MySQL Server (local or remote)  
- A MySQL client / tool (e.g. MySQL Workbench, MyCLI)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) for containerized setup (Optional)
- Postman or HTTP client for testing (Optional)   

### Steps

**1. Clone the repository**

```bash
git clone https://github.com/rashedulalam46/library-api-mysql.git
cd library-api-mysql
```
**2. Configure connection string**
   
Open appsettings.json or appsettings.Development.json, and set up your ConnectionStrings:DefaultConnection to point to your MySQL Server.

```
{
  "ConnectionStrings": {
    "ConString": "Server=YOUR_SERVER;Database=LibraryDb;User Id=…;Password=…;"
  }
}
```

If you are using Docker, then use

```
{
  "ConnectionStrings": {
    "ConString": "Server=host.docker.internal;Database=LibraryDb;User Id=…;Password=…;"
  }
}
```

**3. Apply migrations / create database**

Run the SQL script located in Library.Infrastructure/Data/DatabaseScript.sql to create the database and tables.
Alternatively, to create the database and tables using Entity Framework, run the following command in the Infrastructure project (or from the solution root):

```
dotnet ef database update
```

## 📁 Repository Structure
```
LibraryApiSqlServer/
├── Library.Api/                   # API / presentation layer (controllers, endpoints)
├── Library.Application/           # Application logic
│   ├── Services/                  # Business services / use cases
│   └── DTOs/                      # Data Transfer Objects, ViewModels
├── Library.Domain/                # Domain / core (entities, interfaces)
├── Library.Infrastructure/        # Data access, repository implementations, EF Core, DB context
├── LibraryApiSqlServer.sln
├── Program.cs
├── appsettings.json
├── appsettings.Development.json
└── README.md
```

 ## 🛣️ API Endpoints (Examples)

These are sample endpoints — adjust according to actual implementation.
| Method | URL             | Description             |
| ------ | --------------- | ----------------------- |
| GET    | /api/books      | Get all books           |
| GET    | /api/books/{id} | Get book by ID          |
| POST   | /api/books      | Create a new book       |
| PUT    | /api/books/{id} | Update an existing book |
| DELETE | /api/books/{id} | Delete a book by ID     |  


## 📦 Deployment

When you’re ready to deploy:

- Configure the production connection string in environment variables.
- Publish the project:

```
dotnet publish --configuration Release
```

- Deploy the resulting output to your server / host / container.
- Ensure the database is accessible and migrations are applied.

##  📄 License & Contribution

- Feel free to fork or suggest changes via pull requests.
- Add a LICENSE file if you have specific usage terms.
- Please document style, code conventions, etc., in a CONTRIBUTING.md.









