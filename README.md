# Docker WP-CLI

[![](https://images.microbadger.com/badges/image/obihann/wpcli.svg)](https://microbadger.com/images/obihann/wpcli "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/obihann/wpcli.svg)](https://microbadger.com/images/obihann/wpcli "Get your own version badge on microbadger.com")

WP-CLI built on top of [Alpine Linux 3.5](https://hub.docker.com/_/alpine/). 

## Alias

* 1.0.0, latest [(Dockerfile)](https://github.com/obihann/docker-wpcli/blob/master/Dockerfile)

## Running

You can use this in two ways, first by using the build script (`scripts/run.sh`) and the other is the traditional way with the Docker run command.

### Docker examples

* **Download** 

```
docker run --rm \
	-v $(pwd):/mnt \
	obihann/wpcli:1.0.0 \
	core download
```

* **Config** 

```
docker run --rm \
	-v $(pwd):/mnt \
	obihann/wpcli:1.0.0 \
	core config  \
	--dbhost=db \
	--dbname=wptest \
	--dbuser=root \
	--dbpass=root
```

* **Install** 

```
docker run --rm \
	-v $(pwd):/mnt \
	obihann/wpcli:1.0.0 \
	core install \
    --url=http://wp-test \
    --title="Awesome website" \
    --admin_user=admin \
    --admin_password=admin \
    --admin_email admin@admin.com
```

### Script Examples

* **Download** 

By default we download everything to your current directory, this can be updated on the params script (see config section below).

```
./scripts/run.sh core download
```

* **Config** 

Config assumes that your current directory already has Wordpress core downloaded.

```
./scripts/run.sh core config  \
	--dbhost=db \
	--dbname=wptest \
	--dbuser=root \
	--dbpass=root
```

* **Install**

Config assumes that your current directory already has Wordpress core downloaded *AND* configured.

```
./scripts/run.sh core install \
    --url=http://wp-test \
    --title="Awesome website" \
    --admin_user=admin \
    --admin_password=admin \
    --admin_email admin@admin.com
```

## DIY

### Building

Other than Docker iteself no additional tools are required for building. Simply run the build script (`./scripts/build.sh`) after updating the params (see config section below) or run the traditional Docker command.

```
docker build -t obihann/wpcli:latest .
```

### Linting

You can lint your Dockerfile by either running `./scripts/lint.sh` or manually running the [projectatomic/dockerfile_lint](https://github.com/projectatomic/dockerfile_lint) image.

```
 docker run -it --rm --privileged -v `pwd`:/root/ \
           projectatomic/dockerfile-lint \
           dockerfile_lint
```

## Config

If you choose to use the run script, make sure to verify the params file.

```
#!/bin/bash

# executables
DOCKER=/usr/local/bin/docker
GIT=/usr/local/bin/git

# settings
IMAGE_NAME=wpcli
VERSION=1.0.0
HOST_WPPATH="$(pwd)"
CONTAINER_WPPATH=/mnt
```

## Credits

* [soifou](https://github.com/soifou/)/[WP-CLI on Alpine Linux](https://github.com/soifou/wpcli-alpine) After I started this I realized their are probably 1000x people who have already done it. Instead of giving up I found this one and stole some great ideas.

## License

This tool is protected by the [GNU General Public License v3](http://www.gnu.org/licenses/gpl-3.0.html).

Copyright [Jeffrey Hann](http://jeffreyhann.ca/) 2016