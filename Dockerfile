FROM nginx:alpine

# Copier les fichiers statiques
COPY index.html /usr/share/nginx/html/
COPY privacy-policy.html /usr/share/nginx/html/
COPY app-ads.txt /usr/share/nginx/html/

# Configuration nginx pour les bons MIME types
RUN echo 'types { text/plain txt; }' > /etc/nginx/mime.types.d/custom.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
