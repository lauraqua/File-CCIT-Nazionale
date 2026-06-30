#docker desktop start

docker-compose -f ./caronte/docker-compose.yml up -d

docker-compose -f ./pkappa2/docker-compose.yml up -d

Start-Sleep -Seconds 10

wsl -e bash curl.sh
#curl.exe -X POST "http://localhost:8080/api/setup"
