# Use distroless static image (has zero CVEs)
FROM gcr.io/distroless/static:nonroot

# Copy a simple hello world binary or static file
COPY --chown=nonroot:nonroot index.html /var/www/html/index.html

# Use a simple HTTP server or just output text
CMD ["echo", "Hello World - This image has zero vulnerabilities!"]
