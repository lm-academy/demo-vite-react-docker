# Demo of how to Dockerize a Vite + React App

This repo provides a minimalistic demo of how to leverage Docker to Dockerize a React-based Vite app in a multi-stage Dockerfile:

1. Stage 1 installs the dependencies and builds the static files;
2. Stage 2 serves the built files using an NGINX web server.

- To build the image, run `docker build -t vite-react-app .`
- To run a new container, simply leverage the recently built image with `docker run -p 3000:80 vite-react-app`

While this is a viable setup, Dockerizing and serving static files in production has several drawbacks. Tools like CDNs (Content Delivery Networks) offer a more optimized solution for caching and serving static assets globally, and are the preferred solution. Nonetheless, knowing how to Dockerize these projects can be helpful in integrating them into local Compose projects for development purposes, and are a helpful example when understanding the different use-cases of multi-stage builds.

🚀 Interested in learning more about Docker and Kubernetes? Check my complete Docker and Kubernetes course here (+ BIG DISCOUNT 🤯): https://www.lauromueller.com/courses/docker-kubernetes

**Check my other courses:**

- 👉 Terraform: The Complete Guide from Beginner to Expert - https://www.lauromueller.com/courses/mastering-terraform
- 👉 Helm: The Definitive Guide from Beginner to Master - https://www.lauromueller.com/courses/definitive-helm-course
- 👉 GitHub Actions: The Complete Guide from Beginner to Expert - https://www.lauromueller.com/courses/mastering-github-actions
- 👉 Write better code: 20 code smells and how to get rid of them - https://www.lauromueller.com/courses/writing-clean-code
