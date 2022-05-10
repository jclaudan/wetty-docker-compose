# Web-Shell for testing purposes in Docker-Container

## Source

The base work was done by [mrpapercut](https://github.com/mrpapercut) in his gist [mrpapercut/shell.php](https://gist.github.com/mrpapercut/9e4f511e74fdf3796d0abcc4de182b65).

## How To Upgrade

```sh
docker-compose pull
docker-compose up --force-recreate --build -d
docker image prune -f
```
