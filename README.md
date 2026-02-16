Ghost Stories Platform – Terraform EC2 Deployment

This repository demonstrates the automated deployment of the Ghost Stories web platform using Terraform and Docker Compose.

The platform is deployed on a live AWS EC2 instance, where Terraform provisions the server, installs all necessary dependencies, configures environment variables, imports the database from a backup, and brings up the entire platform in Docker containers.

Repository Contents

docker-compose.yml – Defines the full-stack services, including React frontend, Express backend, Django admin panel, and PostgreSQL database.

ghost_blog_backup.sql – Database backup used to initialize the PostgreSQL instance.

main.tf – Terraform script to provision the EC2 instance, install required software, set up environment configuration, and automate deployment.

Deployment Overview

Fully automated: EC2 creation, OS setup, Git, Docker, Docker Compose installation, repo cloning, environment setup, database import, and container orchestration.

Containerized services: Each service runs in its own Docker container with proper volume persistence and networking.

Infrastructure as Code: Terraform manages all server provisioning and deployment steps.

Production-ready: Designed to replicate the live Ghost Stories platform on a cloud server with minimal manual intervention.

Purpose

This repository showcases hands-on DevOps and infrastructure automation skills, demonstrating the ability to deploy a full-stack platform in a production environment using modern tools like Terraform, Docker, and Docker Compose.
