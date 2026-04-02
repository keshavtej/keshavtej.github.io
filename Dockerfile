# Use the official Nginx Alpine image for a tiny footprint (~23MB)
FROM nginx:alpine

# Set a label for your project
LABEL Name=personal-portfolio Version=1.0.0

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files (index.html, css, images, etc.) 
# from your local folder to the Nginx server directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Nginx starts automatically, so no need for a complex ENTRYPOINT