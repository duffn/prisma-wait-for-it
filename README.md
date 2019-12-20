# prisma-wait-for-it

## What is this?

This is a very simple Dockerfile that combines [Prisma](https://www.prisma.io/) and [`wait-for-it`](https://github.com/vishnubob/wait-for-it).

## Why is this?

In the [official Docker image](https://hub.docker.com/r/prismagraphql/prisma/) Prisma starts up in the container and immediately tries to connect to the database specified in its configuration. When running in CI, for example CircleCI, that database is likely not ready when Prisma starts. This uses `wait-for-it` to wait for that database prior to starting Prisma.

## Usage

- Pull the image from Docker Hub.

```bash
docker pull duffn/prisma-wait-for-it:latest
```

- You can also select a few different [tags](https://hub.docker.com/repository/docker/duffn/prisma-wait-for-it/tags?page=1).

- Run the container and pass in a `DATABASE` environment variable for your database. The default is `localhost:5432`.

```bash
docker run -e DATABASE_HOST=localhost:3306 duffn/prisma-wait-for-it:latest
```

## License

[MIT](https://opensource.org/licenses/MIT)
