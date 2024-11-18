# Use the official Nginx image as the base image
FROM nginx:latest
 
# Copy the custom static website files into the container's web root
# Replace 'your-website-directory' with your actual directory or file paths
COPY . /usr/share/nginx/html
 
# If you have a custom nginx.conf file, you can copy it into the container as well:
# COPY nginx.conf /etc/nginx/nginx.conf
 
# Expose port 80 (Nginx's default HTTP port)
EXPOSE 80
 
# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]