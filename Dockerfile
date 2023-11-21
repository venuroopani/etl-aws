# Use a minimal base image
FROM alpine:3.14

# Set the working directory in the container
WORKDIR /app

# Create a simple "Hello World" HTML file
RUN echo "<html><body><h1>Hello World!</h1></body></html>" > index.html

# Expose the port the app runs on
EXPOSE 80

# Command to start a basic HTTP server serving the "Hello World" page
CMD ["sh", "-c", "while true; do { echo -ne 'HTTP/1.1 200 OK\r\n\r\n'; cat index.html; } | nc -l -p 80; done"]
