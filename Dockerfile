FROM microsoft/dotnet:2.0-sdk AS builder
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:1.1-runtime
WORKDIR /app
EXPOSE 5000
COPY --from=builder /app/out ./
ENTRYPOINT ["dotnet", "dotnet-webapi-docker.dll"]
