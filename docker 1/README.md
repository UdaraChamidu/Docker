# initialize docker...

## build docker container image (using python)

```
docker build -f Dockerfile -t pyapp .
```

## run

```
docker run -it pyapp
```

## to check,

```
print("hello")
```

---

## to build our own,

- create a epository on docker hub

```
docker build -f Dockerfile -t udaradoc/ai-first-app-test:latest .
```

- in above, udaradoc is user name. ai-first-app-test is repo name. latest . is the tag or version

## docker login, befre push

```
docker login
```

## push

```
docker push udaradoc/ai-first-app-test:latest
```

## to deploy another version of it

```
docker build -f Dockerfile -t udaradoc/ai-first-app-test:v1 .

docker push udaradoc/ai-first-app-test:v1
```

# Docker compose

- crete the compose.yml and run using,
```
docker compose up
```
- then goto localhost:8000 and check

---

# http
```
PS C:\deploy AI> docker compose run app /bin/bash 
root@2a243769be71:/# ls
bin   etc         lib    mnt   root  srv  usr
boot  home        lib64  opt   run   sys  var
dev   index.html  media  proc  sbin  tmp
root@2a243769be71:/# cat docker env
cat: docker: No such file or directory
cat: env: No such file or directory
root@2a243769be71:/# cat .dockerenv
root@2a243769be71:/# cd home
root@2a243769be71:/home# echo "hello" > index.html 
root@2a243769be71:/home# 
```

- docker compose up , should be enter before it.

```
RUN echo "hello" > index.html
docker compose up --build
```

# local files to docker
