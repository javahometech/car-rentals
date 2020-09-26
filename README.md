# car-rentals (18-March-2020)
This is online app to rent your car

# Google Docs Notes Link
[Google Docs Running Notes](https://docs.google.com/document/d/1zW34VFRx9proU-769qXs_vqgiuKneCA-MPoUBMoiQnQ/edit?usp=sharing)

### Maven command to create java web project

```
  mvn archetype:generate 
	-DgroupId=in.javahome
	-DartifactId=pets-app
	-DarchetypeArtifactId=maven-archetype-webapp
	-DinteractiveMode=false

```

### Install Nexus3 on Linux



```
   sudo yum install java-1.8.0-openjdk -y
   cd /opt/
   sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
   sudo tar -xf latest-unix.tar.gz
   sudo mv nexus-3.21.1-01/ nexus3
   sudo chown -R ec2-user:ec2-user nexus3/ sonatype-work/
```
#### Start/Stop/Restart Nexus server
```
  /opt/nexus3/bin/nexus start
  /opt/nexus3/bin/nexus stop
  /opt/nexus3/bin/nexus restart
```

#### Configure Nexus as Service

```
    vi /opt/nexus3/bin/nexus.rc
    run_as_user="ec2-user"
    sudo ln -s /opt/nexus3/bin/nexus /etc/init.d/nexus
    
    cd /etc/init.d
    sudo chkconfig --add nexus
    sudo chkconfig --levels 345 nexus on
    sudo service nexus start
```

### Install Tomcat8 on Linux

```
   sudo yum install java-1.8.0-openjdk -y
   cd /opt/
   sudo wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.53/bin/apache-tomcat-8.5.53.tar.gz
   sudo tar xf apache-tomcat-8.5.53.tar.gz
   sudo rm apache-tomcat-8.5.53.tar.gz
   sudo mv apache-tomcat-8.5.53/ tomcat8
   sudo chown -R ec2-user:ec2-user tomcat8/
   
```
#### Manage tomcat
```
    /opt/tomcat8/bin/startup.sh
    /opt/tomcat8/bin/shutdown.sh 
```

#### Runtomcat as a Service
```
    sudo ln -s /opt/tomcat8/bin/catalina.sh /etc/init.d/tomcat
```
open tomcat script
```
   sudo vi /etc/init.d/tomcat
```
In the above script place the following line at line number 2
```
   #chkconfig: 345 99 01
```
Execute following commands to complete the process

```
   sudo chkconfig --add tomcat
   sudo chkconfig --levels 345 tomcat on

```

Start and Stop tomcat

```
service tomcat start
service tomcat stop
```
### Install Jenkins on Linux

```
   sudo yum install java-1.8.0-openjdk-devel -y
   sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
   sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
   sudo yum install jenkins -y
   
   sudo chkconfig jenkins on
   
   sudo service jenkins start
   
```

### Install and Run Sonar as Service

```
sudo yum install java-1.8.0-openjdk -y
cd /opt/
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.1.zip
sudo unzip sonarqube-7.1.zip
sudo mv sonarqube-7.1 sonar7
sudo rm sonarqube-7.1.zip
sudo chown -R ec2-user:ec2-user sonar7/
/opt/sonar7/bin/linux-x86-64/sonar.sh start

```
#### Configure Sonar as Service
Make sure this entry is present in sonar.sh
```
RUN_AS_USER="ec2-user"
```
[SonarQube Run as Service](https://docs.sonarqube.org/7.1/RunningSonarQubeasaServiceonLinux.html)


### Install & Run Docker on Linux
```
   sudo yum install docker -y
   sudo usermod -a -G docker ec2-user. (Add ec2-user to docker group)
   sudo chkconfig docker on 
   sudo service docker start
   // exit and login again
```




