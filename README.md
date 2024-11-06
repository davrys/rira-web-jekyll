# _Rí Ra_ for Jekyll

Website for the band [Rí Ra](http://rira.cz/), build with Jekyll using Docker.

Made from scratch, inspired by [pixyll](https://github.com/johnotander/pixyll), [airspace](https://github.com/luminousrubyist/airspace-jekyll), [agency](https://github.com/y7kim/agency-jekyll-theme).


# Build


1. Install Jekyll Docker image

```shell
docker pull jvconseil/jekyll-docker
```


2. Build the web site (run the docker image and download all dependencies)

```shell
docker compose up
```

or

```shell
docker compose up "site" --remove-orphans
```

See also documentation for [docker compose](https://docs.docker.com/compose/overview/).


3. In your browser go to

```shell
http://localhost:4000/
```

See also `console ouput` for more instructions.



## More Jekyll+Docker information

https://github.com/envygeeks/jekyll-docker/issues/364

https://hub.docker.com/r/jvconseil/jekyll-docker

[Jekyll Docker](https://github.com/envygeeks/jekyll-docker)

\
Installing official Jekyll Docker image
```shell
docker pull jekyll/jekyll:3.8.6
```


# Used resources

[Font Awesome](https://fontawesome.com/v4/icons/)


# Web analytics and search engines

You can measure visits to your website either by using [Google Analytics](https://www.google.com/analytics/) tracking embed or the more advanced [Google Tag Manager](https://www.google.com/analytics/tag-manager/) container.
* For Google Analytics set up the value for `google_analytics`, it should be something like `google_analytics: UA-XXXXXXXX-X`.
* For Google Tag Manager set up the value for `google_tag_manager`, it should be something like: `google_tag_manager: GTM-XXXXX`.
* _Do not_ set both of above methods because this will cause conflicts and skew your reporting data.
* Remember that you need to properly configure the GTM container in its admin panel if you want it to work. More info is available in [GTM's docs](https://www.google.com/analytics/tag-manager/resources/).

# Screenshots

![Screenshot](./images/screenshots/web-screenshot-full.jpg)