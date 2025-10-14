# 🚀 Jenkins Pipeline: Build, Test & Deploy with Jenkinsfile

As a DevOps engineer (or developer) working with Jenkins, it’s essential to work with **Pipeline jobs**, not **Freestyle jobs** — especially when building CI/CD workflows.

Here’s why 👇

---

## 🧩 Jenkins Job Types

**Freestyle Job** → great for simple builds, configured via UI, but limited in flexibility.  
**Pipeline Job** → designed for complex, automated workflows. It supports scripting (Pipeline as Code), parallel tasks, variables, conditionals, and full version control.

---

## 💡 Why Pipeline Jobs Matter

- Execute multiple tasks in parallel  
- Use user inputs and conditional statements  
- Set variables dynamically  
- Integrate easily with Git, Docker, or Kubernetes  
- Store pipeline logic inside your Git repository (**Infrastructure as Code** best practice)

---

## 🛠️ Building My First Jenkins Pipeline

1️⃣ Create a **New Pipeline Job** in Jenkins  
2️⃣ Connect it to **GitLab** (the main use case for all builds)  
3️⃣ Define the pipeline using **Groovy scripting** (less complex than Java, but equally powerful)

Inside Jenkins, under **Pipeline Definition**, you can either:
- Write the script directly, or  
- Use **“Pipeline script from SCM”** and specify your Git repo + Jenkinsfile path.

💭 **Groovy Sandbox** → a built-in Jenkins security feature that restricts unapproved Groovy methods — useful for running safe pipelines without admin approval.

---

## 📜 Jenkinsfile

A `Jenkinsfile` is a text file containing the pipeline definition.  
It lives inside your Git repo, enabling **Pipeline as Code**.

**Two main types:**

- **Declarative Pipeline** → easier to start, uses a fixed structure  
- **Scripted Pipeline** → more flexible, uses advanced Groovy syntax  

**My example (Declarative):**
```groovy
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'Building the application...'
            }
        }
        stage('test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
✅ Successful Build
Once triggered, Jenkins fetched my Jenkinsfile from GitLab and executed each stage — build, test, and deploy — visible in the Jenkins UI with their own logs and execution times.

This approach provides clear visibility, traceability, and easier troubleshooting for any failed stage.

📸 Pipeline Walkthrough (Screenshots)
Step	Description	Image
1️⃣	Create Pipeline Job	
2️⃣	Configure General Settings	
3️⃣	Pipeline Definition	
4️⃣	Jenkinsfile Configured	
5️⃣	Build Stages	
6️⃣	Stage View	
7️⃣	Console Output	

🎯 Wrap-Up
That’s a wrap on my first Jenkins Pipeline Project!
Next up → deeper dive into Jenkinsfile syntax, advanced logic, and integration with Docker & AWS for full CI/CD automation.

#DevOps #Jenkins #CI/CD #GitLab #Automation #PipelineAsCode #TechWorldWithNana #LearningInPublic #CloudComputing
