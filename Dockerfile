# Using a multi-stage Dockerfile since Vite
# (and React apps in general) have a build step
# that generates the static files to be served
# by a web server
FROM node:22-alpine AS build

WORKDIR /usr/app

COPY package.json package-lock.json ./
RUN npm install

COPY . .
RUN npm run build

# The final stage leverages a lightweight web server
# to serve the static files.
FROM nginx:1.27-alpine

# Step 7: Copy the built files to the Nginx web directory
COPY --from=build /usr/app/dist /usr/share/nginx/html

# Step 8: Expose port 80 and start Nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]