# SOAP
StandAllone Oracle Apex Playground - Project

---

### TASKs ###
- [x] setting up devZone
- [x] setting up Dockerimage
- [x] Add Java (default JDK)
- [ ] Add Tomcat 8.40 ( some issues with 9 )  on Ubuntu 18.04 // Removed for now
- [x] Add SSH
- [ ] Add Oracle Express (latest simply working)
- [ ] Add APEX (latest simply working)
- [ ] Add ORDS
- [ ] Add and Mange User-Rights
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
Lookup port for ssh

```
docker port <container-name> 22

```
Use shown port in:

```
ssh root@localhost -P <Port-from-above>

```

### Lookup Tomcat: ###
```
curl http://localhost:8080
```
or use your Browser.
