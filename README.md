# Shopware test shop

Dockerized Shopware for testing purposes

## For v5+

```sh
./start-v5.sh
```

Specify minor/patch versions in `docker-compose.yml`

## For v4

```sh
./start-v4.sh
```

Specify minor/patch versions in `v4.yml`


## Install SwagBackendOrder

This plugin allows creting orders manually from the Shopware backend.


### For Shopware 5.4+

```sh
$ docker exec -it [shop-container-id] bash
$ apt-get update && apt-get install git
$ git clone https://github.com/shopwareLabs/SwagBackendOrder ./custom/plugins
$ /swtools/init.sh
$ php bin/console sw:plugin:refresh
$ php bin/console sw:plugin:install SwagBackendOrder
$ php bin/console sw:plugin:activate SwagBackendOrder
$ exit
```


### For older Shopware versions

```sh
$ docker exec -it [shop-container-id] bash
$ apt-get update && apt-get install git
$ git clone -b legacy51 https://github.com/shopwareLabs/SwagBackendOrder ./engine/Shopware/Plugins/Local/Backend
$ /swtools/init.sh
$ php bin/console sw:plugin:refresh
$ php bin/console sw:plugin:install SwagBackendOrder
$ php bin/console sw:plugin:activate SwagBackendOrder
$ exit
```


## Access

- Shop frontend: http://127.0.0.1:8000/
- Shop backend: http://127.0.0.1:8000/backend
- Admin user/passw: demo/demo
