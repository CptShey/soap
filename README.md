![alt text](http://www.svujo.com/odbs/soap_logo.png "S.O.A.P")
# StandAlone-OracleDatabase-Apex-Playground

---
The image environment is an ORACLE XE 18c on CentOS with APEX 19.1 by using the embedded PL/SQL Gateway

### SOAP ###
The project SOAP was born out of a student project work.The goal is to provide computer science students with a locally hosted Oracle database. The student has the ability to work remotely and play around with the database for his own developments without compromising a productive system. The associated Oracle Application Express Framework is intended to show the possibilities of how quickly complex tasks can be implemented without investing longer development times in a frontend.

### License Terms: ###

Please note for the use and the benefits the license terms for the version Orcale XE 18c. This version focuses on development and education.


---
## Get the prebuilt Image from Docker Hub ##
### Installation: ###

For easy installation of the Docker image Kitematic is suitable.
Find it here: https://kitematic.com or check your Docker menu for further informations.
The image can be found in the DockerHub under the name "projectsoap, Soap for Students". There you can easily create the prebuildet container.

Terminal users can pull the project files with this line:
```
docker pull projectsoap/soap_student
```
## OR ##

### Building up own image: ###
```
docker build <own-image-name> .
```
## AND START ##

### Run the container with 8080 port opened: ###
```
docker run -d -p 8080:8080 <own-image-name>
```


