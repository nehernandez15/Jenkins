FROM nginx:latest
COPY IntegracionContinua /usr/share/nginx/html
EXPOSE 80
docker build -t app:test .
