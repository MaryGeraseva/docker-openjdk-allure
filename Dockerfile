FROM openjdk:11

# Install utils
RUN apt-get update && apt-get install -y apt-utils curl git tar gzip
RUN tar --version

# Install Allure
RUN curl -o allure-commandline-2.13.0.tgz -Ls http://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.13.0/allure-commandline-2.13.0.tgz && tar -zxvf allure-commandline-2.13.0.tgz -C /opt/ && ln -s /opt/allure-commandline-2.13.0/bin/allure /usr/bin/allure
ENV PATH="$PATH:/opt/allure-2.13.0/bin"
RUN allure --version

# Download project
RUN git clone https://github.com/MaryGeraseva/2-rest-api-tests.git

# Launch project
WORKDIR 2-rest-api-tests
CMD chmod +x ./gradlew ; ./gradlew test; allure serve build/allure-results -p 80
