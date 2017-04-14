#Docker WP-CLI

WP-CLI built on top of Alpine Linux 3.5. 

## Alias

* 1.0.0, latest [(Dockerfile)](Dockerfile)

## Running

You can use this in two ways, first by using the build script (`scripts/run.sh`) and the other is the traditional way with the Docker run command.

### Script Examples

* **Download** 

`./scripts/run.sh core download`

* **Config** 

```
./scripts/run.sh core config  \
	--dbhost=db \
	--dbname=wptest \
	--dbuser=root \
	--dbpass=root
```

* **Install**

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
HOST_WPPATH="$(pwd)/wp"
CONTAINER_WPPATH=/mnt
```



## License

This tool is protected by the [GNU General Public License v3](http://www.gnu.org/licenses/gpl-3.0.html).

Copyright [Jeffrey Hann](http://jeffreyhann.ca/) 2016