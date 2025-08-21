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

##
