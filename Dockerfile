# Use official Nginx image as base
FROM nginx:alpine

# Copy all web files to Nginx default directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# Expose port 80 for web traffic
EXPOSE 80

# Nginx will start automatically with the default CMD from base image
