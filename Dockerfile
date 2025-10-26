FROM nginx:alpine

# Copier les fichiers statiques
COPY index.html /usr/share/nginx/html/
COPY privacy-policy.html /usr/share/nginx/html/
COPY app-ads.txt /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
