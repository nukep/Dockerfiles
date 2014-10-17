## How to use this image

### Test it out (temporary)

*Warning: **This is not recommended for running long-term servers!***
(see Start a new server)

    docker run --rm -it -p 12345:25565 nukep/minecraft

This will create a Minecraft world on port 12345.
As all world data is ephemeral, all data is destroyed once the Docker container
is removed. In this case, the container is removed when the server is stopped.

Once the container is started, you'll be prompted to agree to the Minecraft EULA.
If you agree, you'll be thrown into the server console.

### Start a new server (long-term)

    docker run -it --name=my-server -v /path/to/minecraft/data:/data
    -p 12345:25565 nukep/minecraft

This will start a Minecraft world on port 12345. The world data is persistent,
as the `/data` volume is mounted.

`/path/to/minecraft/data` is replaced with the location of an existing Minecraft
world (contains `server.properties`), or an empty directory.

Once the container is started, you'll be prompted to agree to the Minecraft EULA
if eula.txt does not exist.
You will not be asked again if you have agreed beforehand.
If you agree, you'll be thrown into the server console.


If you want to exit and keep the server running, enter the escape sequence
`Ctrl+P, Ctrl+Q`. This will deattach you from the Docker container.

### Stop the server

    docker stop name-of-your-server

This will gracefully stop the server. **No world data will be lost**, as long as
`--rm` is not passed to the Docker container.

You can alternatively attach the container with `docker attach` and issue the
`/stop` command.


## Administering a running server

If the Docker container has stopped, start it in the background with:

    docker start name-of-your-server

If the Docker container is running in the background, attach it with:

    docker attach name-of-your-server


If you want to exit and keep the server running, enter the escape sequence
`Ctrl+P, Ctrl+Q`. This will deattach you from the Docker container.

