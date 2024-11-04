# Use official nginx image
FROM nginx:alpine

# Create directory for static files
WORKDIR /usr/share/nginx/html

# Copy static files to nginx directory
COPY . .

# Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

