# Library API (MySQL)

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
- (Optional) Postman or HTTP client for testing  

### Steps

1. **Clone the repository**

   ```bash
   git clone https://github.com/rashedulalam46/library-api-mysql.git
   cd library-api-mysql



