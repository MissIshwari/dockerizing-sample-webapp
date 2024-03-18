#    - Use an official Nginx base image.

#    - Copy the index.html and nginx.conf files into the appropriate location in the container.

#    - Ensure that the Nginx server is started when the container is run.

FROM nginx:alpine

COPY index.html /usr/share/nginx/html

COPY nginx.conf /usr/share/nginx/conf

EXPOSE 80

RUN ls

RUN cat /usr/share/nginx/html/index.html 

CMD ["nginx","-g","daemon off;"]
