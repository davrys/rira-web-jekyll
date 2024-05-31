# _Rí Ra_ for Jekyll

Website for the band [Rí Ra](http://rira.cz/), build with Jekyll using Docker.

Made from scratch, inspired by [pixyll](https://github.com/johnotander/pixyll), [airspace](https://github.com/luminousrubyist/airspace-jekyll), [agency](https://github.com/y7kim/agency-jekyll-theme).


# Build

## Step 1

Build the web site (run the docker image and download all dependencies)

```
docker compose up
```

or

```
docker compose up "site" --remove-orphans
```

Docs: https://docs.docker.com/compose/overview/

## Step 2

Then go to

```
http://localhost:4000/
```

## Installing Jekyll Docker image
```
docker pull jekyll/jekyll:3.8.6
```


## Used resources

[Font Awesome](https://fontawesome.com/v4/icons/)

## Web analytics and search engines

You can measure visits to your website either by using [Google Analytics](https://www.google.com/analytics/) tracking embed or the more advanced [Google Tag Manager](https://www.google.com/analytics/tag-manager/) container.
* For Google Analytics set up the value for `google_analytics`, it should be something like `google_analytics: UA-XXXXXXXX-X`.
* For Google Tag Manager set up the value for `google_tag_manager`, it should be something like: `google_tag_manager: GTM-XXXXX`.
* _Do not_ set both of above methods because this will cause conflicts and skew your reporting data.
* Remember that you need to properly configure the GTM container in its admin panel if you want it to work. More info is available in [GTM's docs](https://www.google.com/analytics/tag-manager/resources/).


# Errors

### Cannot start service jekyll

```
ERROR: for riracz_jekyll_1  Cannot start service jekyll: driver failed programming external connectivity on endpoint riracz_jekyll_1 (8ec92daa51391274126dda1cd55442e3038f8e7cd9999a54467d845ea4527401): Bind for 0.0.0.0:4000 failed: port is already allocated
```

Solution:
Restart Docker
