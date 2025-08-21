
# declare what image yo use
# FROM image_name:latest
# FROM dockerusername:appname/latest   ??
# before run open docker desktop app
FROM python:latest

WORKDIR /app

# docker build -f Dockerfile -t pyapp .  
# docker run -it pyapp

# docker build -f Dockerfile -t username/ai-py-app-test:latest .
# docker push username/ai-py-app-test:latest

# to deploy another version of it, change the version tag to "ai-py-app-test:v1 ."
# and we need to push.


# run python servers
# python -m http.server 8000 pyapp
# docker run -it -p 3000:8000  pyapp 
# 

# copy local folder to container folder

COPY ./src .

# RUN echo "hello" > index.html


CMD ["python", "-m", "http.server", "8000" ]