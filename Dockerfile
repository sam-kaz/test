#FROM frolvlad/alpine-oraclejdk8:slim
FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
VOLUME /tmp
#ADD target/freelancer-kit-0.0.1-SNAPSHOT.jar app.jar
ADD ["target/freelancer-kit-0.0.1-SNAPSHOT-exec.jar", "app.jar"]
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8787,suspend=n"
EXPOSE 8080 8787
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar /app.jar" ]
#test_freelancerkit freelancer-kit-master_freelancerkit freelancekit_freelancerkit travisci_freelancerkit