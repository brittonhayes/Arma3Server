# Arma 3 Dedicated Server

An Arma 3 Dedicated Server. Updates to the latest version every time it is restarted.

## Usage

Setup [linuxgsm for ARMA 3](https://docs.linuxgsm.com/game-servers/arma-3)

Settings can be changed in:

- `configs/arma3server.server.cfg`
- `configs/arma3server.network.cfg`

## Docker Compose

To use with docker-compose, run the following command:

```bash
# Start the server detached
docker-compose up -d
```

## Helm Chart

To use with helm, run the following command after setting the environment variables:

```bash
# Install the helm chart
helm -n arma3 install arma3 ./charts \
    --set credentials.serverPassword=$SERVER_PASSWORD \
    --set credentials.adminPassword=$ADMIN_PASSWORD \
    --set credentials.steamUser=$STEAM_USER \
    --set credentials.steamPassword=$STEAM_PASSWORD
```

## Mods

### Local

1. Place the mods inside `/mods`
2. Start the server.

# Acknowledgements

- Helm chart design heavily based on the work by [fbuchmeier](https://github.com/fbuchmeier)
- Server administration using [linuxgsm](https://linuxgsm.com)