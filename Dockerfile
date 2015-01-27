FROM microsoft/aspnet
# copy the contents of the local directory to /app/ on the image
ADD . /app/
# set the working directory for subsequent commands
WORKDIR /app
# fetch the NuGet dependencies for our application
RUN kpm restore
# set the working directory for subsequent commands
WORKDIR /app/src/ChackMVC
# expose TCP port 5004 from container (see project.json)
EXPOSE 5004
# Configure the image as an executable
# When the image starts it will execute the Ågk kestrelÅh command
# effectively starting our web application
ENTRYPOINT ["k", "kestrel"]
