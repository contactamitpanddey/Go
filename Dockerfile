# Start from the latest Go base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files first
COPY . .

# Download the Go module dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the port your Go application listens on
EXPOSE 8080

# Run the Go application when the container starts
CMD ["./main"]
