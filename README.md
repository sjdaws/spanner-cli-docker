# [Google Spanner CLI](https://hub.docker.com/repository/docker/sjdaws/spanner-cli)

This repository is simply a dockerised version of the [Google Spanner CLI](https://github.com/cloudspannerecosystem/spanner-cli) by Cloud Spanner Ecosystem.

## Usage

### Command Line
This shell statement shows the basic usage, which will download the CLI and perform an intial connection.

```shell script
docker run --rm --env SPANNER_DATABASE=database_name --env SPANNER_INSTANCE_ID=instance_id --env SPANNER_PROJECT_ID=project_id sjdaws/spanner-cli:latest
```

### Docker Compose

This is the equivalent configuration for `docker-compose`, with custom environment variables for your spanner instance.

```shell script
version: '3'
  services:
    spanner-cli:
      image: sjdaws/spanner-cli:latest
      environment:
        - SPANNER_DATABASE=database_name
        - SPANNER_INSTANCE_ID=instance_id
        - SPANNER_PROJECT_ID=project_id
```