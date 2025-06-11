# Step 1: Use official lightweight nginx image
FROM nginx:alpine

# Step 2: Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your website files to nginx html folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
