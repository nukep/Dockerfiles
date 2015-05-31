## How to use this image

### Create a new server

    docker run -it --name=my-server -v /path/to/minecraft/data:/data
    -p 12345:25565 nukep/minecraft

This will create a Minecraft server on port 12345.
The world data is stored on the host at `/path/to/minecraft/data`.

`/path/to/minecraft/data` is replaced with either the location of an existing
Minecraft world (contains `server.properties`), or an empty directory.

If a new world is created, you'll be prompted to agree to the Minecraft EULA.
You will not be asked to agree again if you have agreed beforehand.

If you want to exit and keep the server running, enter the escape sequence
`Ctrl+P, Ctrl+Q`. This will deattach you from the Docker container.

### Quick test

    docker run --rm -it -p 12345:25565 nukep/minecraft

This will create a _temporary_ Minecraft world on port 12345.
All data, along with the container itself, is **destroyed** once the Docker
container is stopped.

Once the container is started, you'll be prompted to agree to the Minecraft EULA.
If you agree, you'll be thrown into the server console.

### Stop the server

    docker stop name-of-your-server

This will gracefully stop the server. **All world data will be saved**.

You can alternatively attach the container with `docker attach` and issue the
`/stop` command.


## Administering a running server

If the Docker container has stopped, start it in the background with:

    docker start name-of-your-server

If the Docker container is running in the background, attach it with:

    docker attach name-of-your-server


If you want to exit and keep the server running, enter the escape sequence
`Ctrl+P, Ctrl+Q`. This will deattach you from the Docker container.

## Backing Up World

It is probably a good idea to keep backups of your world save. You can do this without stopping the server container by temporarily disabling world saving. There is an example Ruby script to do this [here](https://gist.github.com/audy/e04f617f6ba2ae045b04).
