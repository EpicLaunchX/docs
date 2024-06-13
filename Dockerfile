# Stage 1: Build the mkdocs site
FROM python:3.10-slim AS build

# Set environment variables to prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt install libcairo2 libcairo2-dev -y

# Create and set the working directory
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project to the working directory
COPY . /app/

# Build the mkdocs site
RUN mkdocs build

# Stage 2: Serve the built site with Nginx
FROM nginx:alpine

# Copy the built site from the previous stage
COPY --from=build /app/site /usr/share/nginx/html

# Expose the port that Nginx will run on
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
