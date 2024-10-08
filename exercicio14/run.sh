docker-compose up -d
docker-compose ps
echo "Aguardando a carga do postgres"
sleep 5
docker-compose exec db psql -U postgres -c '\l'
docker-compose down
