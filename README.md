# Docker WP-CLI

WP-CLI built on top of [Alpine Linux 3.5](https://hub.docker.com/_/alpine/). 

## Alias

* 1.0.0, latest [(Dockerfile)](Dockerfile)

## Running

You can use this in two ways, first by using the build script (`scripts/run.sh`) and the other is the traditional way with the Docker run command.

### Script Examples

* **Download** 

By default we download everything to your current directory, this can be updated on the params script (see config section below).

`./scripts/run.sh core download`

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

* [soifou](https://github.com/soifou/)

	[WP-CLI on Alpine Linux](https://github.com/soifou/wpcli-alpine) After I started this I realized their are probably 1000x people who have already done it. Instead of giving up I found this one and stole some great ideas.

## License

This tool is protected by the [GNU General Public License v3](http://www.gnu.org/licenses/gpl-3.0.html).

Copyright [Jeffrey Hann](http://jeffreyhann.ca/) 2016