FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY products.html /usr/share/nginx/html/
COPY payment.html /usr/share/nginx/html/

COPY style.css /usr/share/nginx/html/
COPY products.css /usr/share/nginx/html/
COPY payment.css /usr/share/nginx/html/

COPY script.js /usr/share/nginx/html/
COPY payment.js /usr/share/nginx/html/

COPY logo.png /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
