FROM nginx:alpine

# Switch to non-root user
USER nginx

# Copy webpage with correct ownership
COPY --chown=nginx:nginx index.html /usr/share/nginx/html/index.html

# Use non-privileged port
EXPOSE 8080
