FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
COPY . /var/www/html/
COPY nginx-conf /etc/nginx/sites-available/default
EXPOSE 8080
CMD [ "nginx", "-g", "daemon off;" ]