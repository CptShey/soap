![alt text](http://digitalreaktor.ddns.net/odbs/soap_logo.png "S.O.A.P")
# Standallone-Oracle-Apex-Playground

---
The image environment is an ORACLE XE 18c on CentOS with APEX 19.1 by using the embedded PL/SQL Gateway

### Whats was done: ###
* Setup DevZone
* Build an image with a runing ORACLE DB
  * Creating DB and setup SYS-User by a given default PW
  * StartUp Database
* Implement APEX 19.1 in the current Build 
  * Alter Container
  * Create APEX environment
  * Unlock the Anonymous User (for EPG)
  * Setup EPG image directory
  * Set HTTP-Port

### ToDo HIGH: ###
- [ ] Provide files
- [ ] Solution for creating instance adminstrator automatically by using the environment password
- [ ] Solution for refereshing the hostname in the listner & tnsnames files by each run 
### ToDo MIDDLE: ###
- [ ] Add ORDS (to get it more stable, usefull and faster) // actually using EPG
- [ ] Add ORDS -> Implement Webserver f.e. Tomcat
- [ ] Add ORDS -> Install ORDS
- [ ] Add ORDS -> Implement the ORDS config in the APEX installscript
### ToDo LOW: ###
- [ ] Add SSH connectivity for better administration
- [ ] Add Installroutine

---
## Get the prebuilt Image from Docker Hub ##
### Installation: ###
```
docker pull cptshey/soap
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

### Docker run for SSH testing ###
```
docker run -d -P <container-name> <own-image-name>

```
### Lookup port for ssh ###

```
docker port <container-name> 22

```
### Use shown port in: ###

```
ssh root@localhost -P <Port-from-above>

```

### Lookup Tomcat: ###
```
curl http://localhost:8080
```
or use your Browser.
