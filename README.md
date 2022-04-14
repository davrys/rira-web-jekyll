# _Rí Ra_ for Jekyll

## Inspired by
[pixyll](https://github.com/johnotander/pixyll)

[airspace](https://github.com/luminousrubyist/airspace-jekyll)

[agency](https://github.com/y7kim/agency-jekyll-theme)


# Web analytics and search engines

You can measure visits to your website either by using [Google Analytics](https://www.google.com/analytics/) tracking embed or the more advanced [Google Tag Manager](https://www.google.com/analytics/tag-manager/) container.
* For Google Analytics set up the value for `google_analytics`, it should be something like `google_analytics: UA-XXXXXXXX-X`.
* For Google Tag Manager set up the value for `google_tag_manager`, it should be something like: `google_tag_manager: GTM-XXXXX`.
* _Do not_ set both of above methods because this will cause conflicts and skew your reporting data.
* Remember that you need to properly configure the GTM container in its admin panel if you want it to work. More info is available in [GTM's docs](https://www.google.com/analytics/tag-manager/resources/).


# Docker

## Install Jekyll Docker image
```
docker pull jekyll/jekyll
```
## Run the docker image (and download all dependencies)
```
docker compose up
```
or
```
docker compose up "site" --remove-orphans
```
https://docs.docker.com/compose/overview/


## Useful Docker commands
https://docs.docker.com/search/?q=prune

#### Remove unused images
```
docker image prune
```
#### Remove all stopped containers
```
docker container prune
```
#### Remove unused data
```
docker system prune
```
#### Remove all unused volumes
```
docker volume prune
```

#### List all containers
```
docker ps -a
```
https://docs.docker.com/engine/reference/commandline/ps/
```
docker container ls -a
```
https://docs.docker.com/engine/reference/commandline/container_ls/

#### Delete container
```
docker rm CONTAINER_ID
```
https://docs.docker.com/engine/reference/commandline/rm/


#### List images
```
docker images -a
```
https://docs.docker.com/engine/reference/commandline/images/

#### Delete image
```
docker image rm IMAGE_ID
```
https://docs.docker.com/engine/reference/commandline/image_rm/

## Errors

### Cannot start service jekyll
```
ERROR: for riracz_jekyll_1  Cannot start service jekyll: driver failed programming external connectivity on endpoint riracz_jekyll_1 (8ec92daa51391274126dda1cd55442e3038f8e7cd9999a54467d845ea4527401): Bind for 0.0.0.0:4000 failed: port is already allocated
```
Solution:
Restart Docker
