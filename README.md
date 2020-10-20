Simple webapp 
=============

This is a simple microservice written in golang and published in a Docker container.
The app runs on port 8086 and bind to host port 8086.
It publishes only one endpoint localhost:8086/greet/<NAME> which is accessible from the container host.

####Build
```
make run       #This will build go application, create docker image with alpine base and starts running it.
make image     #This build go application and create docker image.
make compile   #This builds go application for linux.

In order to access the webservice from host you need curl or access it from browser
In the browser access this URL 
localhost:8086/greet/<MY_NAME>
```  
