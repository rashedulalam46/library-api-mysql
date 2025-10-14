FROM mcr.microsoft.com/dotnet/aspnet:9.0-bookworm-slim AS base
WORKDIR /app
EXPOSE 5135

ENV ASPNETCORE_URLS=http://+:5135

FROM mcr.microsoft.com/dotnet/sdk:9.0-bookworm-slim AS build
ARG configuration=Release
WORKDIR /src
COPY ["LibraryApiMySql.csproj", "./"]
RUN dotnet restore "LibraryApiMySql.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "LibraryApiMySql.csproj" -c $configuration -o /app/build

FROM build AS publish
ARG configuration=Release
RUN dotnet publish "LibraryApiMySql.csproj" -c $configuration -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "LibraryApiMySql.dll"]
