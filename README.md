# Openjdk:11 + Git + Allure Docker image
There is my version of openjdk Docker image which also includes Git and Allure.       
This is completed solution for launching API tests and generate Allure report.  

## Tools
Docker, Docker compose, JDK:11, Gzip, Git, Allure

## Usage 

### How to create Docker container and start my test project
* open command line
* check Docker version `docker --version`
  * if Docker doesn't find install from [Docker](https://docs.docker.com/docker-for-windows/install/)
* check Docker compose version `docker-compose --version`
  * if Docker compose doesn't find install from [Docker compose](https://docs.docker.com/v17.09/compose/install/#master-builds) 
* download Docker files:
  * from GitHub: clone git repository `https://github.com/MaryGeraseva/docker-openjdk-allure` 
                 open folder `cd [$user.dir]/docker-openjdk-allure`  
  or 
  * from DockerHub: create new folder `mkdir docker-openjdk-allure` 
                    open new folder `cd [$user.dir]/docker-openjdk-allure` 
                    download docker image `docker pull marygeraseva/openjdk-git-allure` 
* build image, run docker container, launch tests:
  `docker-compose up`
* wait for until all tests will be done and will generate Allure report >>  
  you will get line `Server started at <http://172.24.0.2:80/>`
* ореn browser on <http://localhost:9090/> and check Allure report

### How to run your API tests project
* open DockerFile and replace repository http address in line:   
`RUN git clone https://github.com/MaryGeraseva/2-rest-api-tests.git`
* re-build docker image `docker-compose build`
* start new docker container `docker-compose start`

## For feedback
**e-mail:** mary.geraseva@gmail.com  
**telegram:** @MaryGeraseva  
**skype:** mary_geraseva  
[linkedIn](https://www.linkedin.com/in/maria-geraseva/)
