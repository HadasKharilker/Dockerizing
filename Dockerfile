# Use an official GCC image as a base
FROM gcc:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    git

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Clone Crow and Asio repositories
RUN git clone https://github.com/CrowCpp/Crow.git crow
RUN git clone https://github.com/chriskohlhoff/asio.git asio

# Copy the current directory contents into the container at /usr/src/myapp
COPY . .

# Build your application
RUN cmake . && make

# Optional: Expose the port your application listens on
EXPOSE 18080

# Run your application
CMD ["./my_cpp_app"]
