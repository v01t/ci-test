FROM anapsix/alpine-java
COPY target/SpringBoot2.1.0HelloWorld-0.0.1-SNAPSHOT.jar /SpringBoot2.1.0HelloWorld-0.0.1-SNAPSHOT.jar
CMD java -jar /SpringBoot2.1.0HelloWorld-0.0.1-SNAPSHOT.jar
