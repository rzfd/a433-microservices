#!/bin/bash

# Nama image dan tag yang akan digunakan
IMAGE_NAME="item-app"
IMAGE_TAG="v1"

# Step 1: Membuat Docker image dari Dockerfile
docker build -t "$IMAGE_NAME:$IMAGE_TAG" .

# Step 2: Melihat daftar image di lokal
docker images

# Step 3: Mengubah nama image agar sesuai dengan format Docker Hub
docker tag "$IMAGE_NAME:$IMAGE_TAG" "dockerhubusername/$IMAGE_NAME:$IMAGE_TAG"

# Step 4: Login ke Docker Hub 
docker login

# Step 5: Mengunggah image ke Docker Hub (atau GitHub Packages jika diterapkan)
docker push "tarjo/$IMAGE_NAME:$IMAGE_TAG"
