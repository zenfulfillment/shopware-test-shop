# Shopware test shop

Dockerized Shopware for testing purposes

## For v5+

```sh
./start-v5.sh
```

## DEMO DATA
You can import demo data to the shop following these steps:

Enter the shop backend http://localhost:8000/backend and go to "Configuration > Basic Settings > Shop Settings > Shop"
and in the right panel give the shop a Host value of `localhost:8000`

Then we can run the following commands in order and one after the other:

```sh
docker-compose exec shop /swtools/init.sh
docker-compose exec shop /swtools/install-demo-data-en.sh
docker-compose exec shop php bin/console sw:store:download SwagDemoDataEN
docker-compose exec shop php bin/console sw:plugin:install SwagDemoDataEN
docker-compose exec shop php bin/console sw:plugin:activate SwagDemoDataEN
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
$ git clone -b legacy51 https://github.com/shopwareLabs/SwagBackendOrder ./engine/Shopware/Plugins/Local/Backend/SwagBackendOrder
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
