# Week 05 — End-to-End CI/CD with Jenkins, Docker Hub & AWS EC2

This project demonstrates a full CI/CD pipeline that:
1. Automatically builds a Java Maven application,
2. Versions the application using Jenkins,
3. Builds and pushes a Docker image to Docker Hub,
4. Deploys the updated container to an AWS EC2 instance using SSH + Docker Compose.

This is the first fully automated pipeline I built from scratch, including debugging SSH access, EC2 permissions, Docker setup, Jenkins credentials, and pipeline logic.

---

## 🔧 **Technologies Used**
- Jenkins Multibranch Pipeline
- Java + Maven build
- Docker & Docker Compose
- AWS EC2 (Amazon Linux 2023)
- SSH authentication
- Docker Hub Registry

---

## 🚀 **Pipeline Stages**
### 1️⃣ Checkout Code  
Jenkins pulls the code from GitLab using PAT authentication.

### 2️⃣ Increment Version  
Jenkins reads `pom.xml`, increments patch version, and commits updated version for the Docker image.

### 3️⃣ Build Application  
Runs:
Produces the `.jar` file.

### 4️⃣ Build Docker Image  
Jenkins builds:
adnanahmed780/demo-app:<version>

Then logs in to Docker Hub and pushes the image.

### 5️⃣ Deploy to EC2  
Using SSH + docker compose:
- Uploads `docker-compose.yaml`
- Runs `docker compose up -d` on the EC2 server
- Updates the running application automatically

---

## 🏗️ **Architecture Diagram (To Be Added)**
> I will upload a diagram here showing Jenkins → Docker Hub → EC2 flow.

---

## 🖼️ **Screenshots**
> Screenshots will appear here after I upload them.

Example placeholder:


---

## 🧠 **Key Learnings**
- How to configure Jenkins SSH keys properly  
- Fixing `Permission denied (publickey)` errors  
- Installing & enabling Docker on Amazon Linux 2023  
- Understanding `sshagent` & Jenkins credentials  
- Debugging Docker Compose issues on EC2  
- Why automation must be incremental and tested step-by-step  

---

## 💡 **Future Improvements**
- Add rollback functionality  
- Deploy via Ansible instead of raw SSH  
- Add monitoring with CloudWatch or Prometheus  

---

## 🙌 **Author**
**Adnan Ahmed** — DevOps Engineer in training  
Bootcamp: TechWorld With Nana (TWN)


