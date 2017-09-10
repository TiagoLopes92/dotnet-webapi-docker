# dotnet-webapi-docker

This project is a test to package a web api into a docker container.

## Build Web Api

To build and run the web api run the following commands:

```
dotnet restore
dotnet run
```

## Build docker image

To package the web api into a docker image following command:

```
docker build -t dotnetwebapi
```

## Run on docker

To run web api inside a docker containter, before build the image and execute the following command:

```
docker run -p 80:5000 dotnetwebapi
```

To access the api use the url "http://{your_ip}/api/values".