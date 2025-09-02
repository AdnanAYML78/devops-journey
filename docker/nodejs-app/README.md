🚀 Dockerize Node.js Application & Push to AWS ECR
This project demonstrates how I containerized a Node.js app using Docker and pushed it to a private AWS Elastic Container Registry (ECR).

It’s part of my DevOps Bootcamp (TechWorld with Nana) learning journey — hands-on projects to master Docker and AWS.
---
🛠️ Technologies Used
- Node.js – simple Express server
- Docker – containerization
- AWS ECR – private image registry
---
📂 Project Structure
docker/nodejs-app/
├── Dockerfile
├── index.js
├── package.json
└── .dockerignore
---
⚙️ Step-by-Step Guide
1. Build and Test Locally
docker build -t my-node-app:1.0 .
docker run -p 3000:3000 my-node-app:1.0

➡️ Open: http://localhost:3000 → Hello from Dockerized Node.js 🚀
2. Create Private Repo in AWS ECR
aws ecr create-repository --repository-name my-node-app --region eu-west-2
3. Authenticate Docker to AWS
aws ecr get-login-password --region eu-west-2 \
  | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com
4. Tag & Push Image
docker tag my-node-app:1.0 <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0
docker push <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0
5. Pull & Run Anywhere
docker pull <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0
docker run -p 3000:3000 <ACCOUNT_ID>.dkr.ecr.eu-west-2.amazonaws.com/my-node-app:1.0
---
📝 Key Learnings
- Writing and optimizing Dockerfiles (WORKDIR, RUN npm install)
- Using .dockerignore to keep images clean
- Pushing/pulling images from a private AWS ECR repo
- Running Node.js apps consistently across environments
- Importance of rebuilding the image after Dockerfile changes

