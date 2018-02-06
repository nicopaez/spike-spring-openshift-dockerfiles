FROM openjdk:8-jre-alpine

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN mkdir -p /var/www/springping

WORKDIR /var/www/springping

RUN wget http://159.89.179.254:8081/artifactory/libs-release/com/nicopaez/springping/nicopaez-springping/$VERSION/nicopaez-springping-$VERSION.jar -O springping.jar

EXPOSE 8080

CMD ["java","-Djava.security.egd=file:/dev/./urandom", "-Dserver.port=8080", "-jar", "springping.jar"]