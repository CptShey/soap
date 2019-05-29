![alt text](https://github.com/CptShey/soap/blob/master/soap_logo.png "S.O.A.P")
StandAllone Oracle Apex Playground - Project


---

### TASKs ###
- [x] setting up devZone
- [x] setting up Dockerimage
- [x] ~~Add Java (default JDK)~~ // Removed for now
- [X] ~~Add Tomcat 8.40 ( some issues with 9 )  on Ubuntu 18.04~~ // Removed for now
- [ ] Add SSH
- [ ] Add Oracle Express ~~(latest simply working)~~ Version 18c
- [ ] Add APEX ~~(latest simply working)~~ Version 19.1
- [ ] ~~Add ORDS~~ // using EPG 
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
