FROM centos
RUN yum update -y
RUN yum install nginx -y
COPY raghu.html /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
