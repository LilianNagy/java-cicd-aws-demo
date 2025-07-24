# Java App CI/CD Pipeline

This project includes a GitHub Actions pipeline that automates the build and deployment of a Java Spring Boot application across three environments: **Dev**, **Test**, and **Staging**.

## 🔁 Pipeline Logic

- On push to `develop`: Build & Deploy to **Dev** → **Test**
- On push to `master`: Build & Deploy to **Staging**

## 🐳 Docker Image

- Built from root `Dockerfile`
- Tagged using `run_id`: `registry/java-app:<run_id>`

## 🔐 Required GitHub Secrets

| Secret Key        | Description                |
|-------------------|----------------------------|
| DOCKER_REGISTRY   | Your Docker/Harbor/ECR URL |
| DOCKER_USERNAME   | Docker registry username   |
| DOCKER_PASSWORD   | Docker registry password   |

## 📁 Deployment

Replace `echo "Deploying..."` lines with your actual deployment commands (Helm, kubectl, Terraform, etc.).


## ⚠️ Notes

- Protect `master` branch to restrict merges.
