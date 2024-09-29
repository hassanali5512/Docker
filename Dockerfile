FROM ubuntu

RUN apt update -y && apt install nginx -y && apt install git -y

WORKDIR /opt/app/

RUN git clone https://github.com/hassanali5512/Hassan.git

RUN mv Hassan/index.html /var/www/html

CMD ["nginx", "-g", "daemon off;"]
