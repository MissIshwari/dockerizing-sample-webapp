#Base image is nginx over the underlying linux system of the container
FROM nginx:alpine

#Copying index.html page to the nginx installation, serving the webpage
COPY index.html /usr/share/nginx/html

#Copying nginx.conf to the default configuration of nginx installation
COPY nginx.conf /usr/share/nginx/conf

#Exposing port 80 of the nginx container, to view webpage hosted over it.
EXPOSE 80

#Starting nginx server
CMD ["nginx","-g","daemon off;"]
