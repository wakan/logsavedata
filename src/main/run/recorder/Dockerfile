FROM mcr.microsoft.com/dotnet/core/sdk:2.2 as build
WORKDIR /app
COPY dotnetapp/*.csproj ./dotnetapp/
WORKDIR /app/dotnetapp
RUN dotnet restore
WORKDIR /app/
COPY dotnetapp/. ./dotnetapp/
WORKDIR /app/dotnetapp
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/runtime:2.2 as run
WORKDIR /app
COPY --from=build /app/dotnetapp/out ./

