
# declare what image yo use
# FROM image_name:latest
# FROM dockerusername:appname/latest   ??
# before run open docker desktop app
FROM python:latest

# docker build -f Dockerfile -t pyapp .  
# docker run -it pyapp

# docker build -f Dockerfile -t username/ai-py-app-test:latest .
# docker push username/ai-py-app-test:latest

# to deploy another version of it, change the version tag to "ai-py-app-test:v1 ."
# and we need to push.


# run python servers
# python -m http.server 8000 pyapp
# docker run -it -p 3000:8000  pyapp 
CMD ["python", "-m", "http.server", "8000" ]

