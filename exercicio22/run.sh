docker-compose up -d
docker-compose scale worker=3 &
docker-compose logs -f -t worker app