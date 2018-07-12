FROM anapsix/alpine-java
LABEL maintainer="carlos.favacho@vibedesenv.com"
COPY /apps/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar /home/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar
CMD ["java","-jar","/home/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar"]
