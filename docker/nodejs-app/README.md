# 🚀 Dockerize Node.js Application & Deploy with Docker Compose on AWS

This project demonstrates how I built, containerized, and deployed a **Node.js application** using **Docker** and **Docker Compose**, while storing the image securely in a **private AWS Elastic Container Registry (ECR)**.  

It’s part of my **DevOps Bootcamp (TechWorld with Nana)** learning journey — hands-on projects to master Docker, AWS, and deployment workflows.



 🛠️ Tools & Technologies Used
- **Node.js** – simple Express.js application  
- **Docker** – containerization of the app  
- **Docker Compose** – multi-container orchestration  
- **AWS ECR** – private container image registry  
- **MongoDB** – database service  
- **Mongo Express** – UI for managing MongoDB  
- **Ubuntu on AWS EC2** – simulating a Dev/Server environment  



 📂 Project Structure

docker/nodejs-app/
├── Dockerfile
├── index.js
├── package.json
├── .dockerignore
├── docker-compose.yml
├── .env
└── proof-of-work/ # screenshots showing each stage



 ⚙️ Step-by-Step Workflow

1️⃣ **Build and Test Locally**
```bash
docker build -t my-node-app:1.0 .
docker run -p 3000:3000 my-node-app:1.0

➡️ Open http://localhost:3000 → Hello from Dockerized Node.js 🚀

2️⃣ Push Image to Private AWS ECR

aws ecr create-repository --repository-name my-node-app --region eu-west-2
aws ecr get-login-password --region eu-west-2 \
  | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com

docker tag my-node-app:1.0 <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0
docker push <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0


3️⃣ Deploy on a Server with Docker Compose

docker compose pull
docker compose up -d
docker compose ps

This starts the app, MongoDB, and Mongo Express as services inside containers.


📸 Proof of Work
Here are screenshots from my deployment, showing progress at each stage:
1. SSH into EC2 instance
2. Verify Docker installation
3. App project directory with Docker + Compose files
4. Docker Compose running services
5. Application logs showing server running on port 3000
6. Accessing app in the browser


📝 Key Learnings
• Writing and optimizing Dockerfiles (WORKDIR, RUN npm install)
• Using .dockerignore to keep images clean
• Pushing/pulling images securely from AWS ECR
• Deploying multi-container apps with Docker Compose
• Running Node.js apps consistently across environments
• Fixing real-world issues (image architecture mismatch, security groups, compose validation


💡 Why This Project Matters

This project proves I can take an application from local development → containerization → private registry → deployment on a server.

It demonstrates practical DevOps skills:

Building production-ready Docker images

Managing private registries with AWS ECR

Deploying apps with Docker Compose in a server-like environment

Troubleshooting real-world issues during deployment

This hands-on workflow reflects what real DevOps and Cloud Engineers do daily, and strengthens my portfolio as I continue my journey into Cloud & DevOps Engineering.
