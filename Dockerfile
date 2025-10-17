# Use a small nginx base image
FROM nginx:alpine

# Remove default nginx content and copy our static files
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start nginx (default CMD in nginx:alpine already runs nginx in foreground)
CMD ["nginx", "-g", "daemon off;"]
