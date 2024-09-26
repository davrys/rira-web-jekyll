
# Errors

### Cannot start service jekyll

```shell
ERROR: for riracz_jekyll_1  Cannot start service jekyll: driver failed programming external connectivity on endpoint riracz_jekyll_1: Bind for 0.0.0.0:4000 failed: port is already allocated
```

Solution:
Restart Docker



To build it, we execute the following command:

```shell
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:$JEKYLL_VERSION jekyll build
```

Notice also how a _site folder was created containing your actual site. (the generated html based on the markdown posts)

Now that you’ve got a site, you’ll probably want to run it locally.

Execute following command:

```shell
docker run --name newblog --volume="$PWD:/srv/jekyll" -p 3000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve --watch --drafts
```

---

OFFICIAL DOC

BUILD NEW
```shell
set site_name=rira
docker run --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll sh -c "chown -R jekyll /usr/gem/ && jekyll new %site_name%" && cd %site_name%
```

BUILD
```shell
docker run --rm --volume="./srv/jekyll" -it jekyll/jekyll sh -c "chown -R jekyll /usr/gem/ jekyll build
```

---

BUILD
```shell
docker run --rm --volume="./srv/jekyll" -it jekyll/jekyll:3.2.1 jekyll build
```

SERVE
```shell
docker run --name rira --volume="./srv/jekyll" -p 4000:4000 -it jekyll/jekyll:3.2.1 jekyll serve --watch --drafts --incremental
```
