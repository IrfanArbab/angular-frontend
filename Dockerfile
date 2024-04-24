# Use Alpine Linux as the base image
FROM node:alpine

# Set working directory
WORKDIR /app

# Install necessary packages
RUN apk update && \
    apk add --no-cache bash git openssh && \
    npm install -g @angular/cli && \
    npm install -g json

# Expose port 4200 for Angular development server
EXPOSE 4200

# Set entrypoint to the Angular CLI
ENTRYPOINT ["ng"]

# Default command is to print Angular CLI help
CMD ["help"]
