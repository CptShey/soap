# SOAP
StandAllone Oracle Apex Playground - Project 

---

### TASKs ###
- [x] setting up devZone
- [x] setting up Dockerimage 
- [x] Add Java (default JDK) 
- [x] Add Tomcat 8.40 ( some issues with 9 )  on Ubuntu 18.04
- [ ] Add SSH
- [ ] Add Oracle Express (latest simply working)
- [ ] Add APEX (latest simply working)
- [ ] Add ORDS
- [ ] Add and Mange User-Rights 
- [ ] Add Installroutine

---

### Building up own image: ###
```
docker build <own-image-name> .
```

### Run the container with 8080 port opened: ###
```
docker run -d -p 8080:8080 <own-image-name>
```

### Lookup Tomcat: ###
```
curl http://localhost:8080
```
or use your Browser.
