docker rm -f $(docker ps -aq) 
docker rmi $(docker images)
docker build -t website .
docker run -d -p 80:5000 --name website website 