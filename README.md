# Simplest Minecraft server docker 

## This project emplement Minecraft Server Docker **building** and **compose** in a way as simple as possible.

1.You can edit **config folder** 

2.and download different version or platform servers like "fabric" **./server.jar** 

3.and install mods to **./mods** to project folder to complete server configuration and then:

`git clone https://github.com/OfTheV0id/minecraft-server-docker`

`docker compose up`

to start up server in a most quick way.

It will build image based on ./server.jar or you can install jar directly in image in **Dockerfile**.

It will create a name volume mc-data to store world data.

> [!NOTE]
> For simplicity, we store configuration, mods and jar in image and it will not be changed defaultly even you restart the container.So I recommended you to run `docker compose up` rather than use an existing image. 
