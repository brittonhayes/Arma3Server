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

To use with helm, run the following command:

```bash
# Install the helm chart
helm install --name arma3server ./charts
```

## Mods

### Local

1. Place the mods inside `/mods`
2. Start the server.

# Acknowledgements

- Helm chart design heavily based on the work by [fbuchmeier](https://github.com/fbuchmeier)
- Server administration using [linuxgsm](https://linuxgsm.com)