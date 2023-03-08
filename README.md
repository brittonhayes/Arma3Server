# Arma 3 Dedicated Server

An Arma 3 Dedicated Server. Updates to the latest version every time it is restarted.

## Usage

Setup [linuxgsm for ARMA 3](https://docs.linuxgsm.com/game-servers/arma-3)

Settings can be changed in:

- `configs/arma3server.server.cfg`
- `configs/arma3server.network.cfg`

### docker-compose

Use `docker-compose start` to start the server.

Use `docker-compose logs` to see server logs.

Use `docker-compose down` to shutdown the server.

Use `docker-compose up -d` to start the server, detached.

See [Docker-compose](https://docs.docker.com/compose/install/#install-compose) for an installation guide.

## Mods

### Local

1. Place the mods inside `/mods`
2. Start the server.