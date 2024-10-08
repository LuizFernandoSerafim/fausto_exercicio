docker build -t ex-build-dev .
docker run -it -v $(pwd):/app -p 80:8000 ex-build-dev # Serviço disponível em
http://localhost
