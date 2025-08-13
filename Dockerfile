# Use the official nginx image as the base
FROM nginx:alpine

# Copy the static site files to the default nginx directory
COPY ./static-site /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
