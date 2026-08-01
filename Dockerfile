FROM eclipse-temurin:25-jre
WORKDIR /server
# Change the config before build it and config will be written into image.
# If you want to change some changeable config in the same world, restart the container and the new config will be read.
ADD ./config/* /server/
# Download in image like:
#    ADD https://meta.fabricmc.net/v2/versions/loader/26.2/0.19.3/1.1.2/server/jar /server/server.jar
# Or download and put it ./server.jar:
ADD ./server.jar /server/
EXPOSE 25565
# Change *G to change the memory
CMD ["java", "-Xmx4G", "-Xms4G", "-jar", "server.jar", "nogui"]
