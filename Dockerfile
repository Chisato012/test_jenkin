FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build

WORKDIR /src

COPY . .

RUN dotnet restore test/test.csproj

RUN dotnet publish test/test.csproj \
    -c Release \
    -o /app/publish \
    --no-restore