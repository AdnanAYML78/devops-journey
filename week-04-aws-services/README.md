
⭐ AWS Services — Learning Notes (Week 4)

☁️ AWS Services — My Learning Summary

This week I started diving into AWS and building a solid foundation for what cloud computing looks like in real life.
Instead of just memorising services, I focused on understanding why AWS exists and what problems it solves for businesses.
 
🔹 What is AWS?

AWS is a global cloud platform that gives you access to computing power, storage, databases, networking, and security — without buying physical servers.
In simple terms:
AWS = someone else’s data centre that you can use on-demand, at scale, and pay only for what you use.
It’s powerful because it lets companies move fast, stay flexible, and avoid huge upfront costs.
 
🔹 Why do people use AWS?

✔ Scalability
Your infrastructure grows and shrinks based on demand automatically.
✔ Cost-effective
No upfront hardware. Pay-as-you-go.
✔ Security
AWS invests billions in global security standards like IAM, encryption, VPC isolation, etc.
✔ Reliability
Multiple regions and availability zones keep apps running even if something fails.
✔ Global reach
You deploy applications close to your customers anywhere in the world.
 
🚧 Key Concepts I Learned

1️⃣ VPC (Virtual Private Cloud)

A VPC is your own private network inside AWS.
•	You control IP ranges
•	You decide public vs private subnets
•	You manage routing + firewalls

Think of it like building your own mini datacentre in the cloud.
 
2️⃣ Subnets
A subnet splits your VPC into smaller networks.
•	Public subnet → reachable from the internet
•	Private subnet → isolated internally

Each subnet lives inside one Availability Zone.
 
3️⃣ EC2 (Elastic Compute Cloud)

A virtual server that you can:
•	create in minutes
•	scale up or down
•	connect via SSH
•	deploy apps on
I learned how to:
•	launch an EC2 instance
•	SSH into it from my Mac
•	install Docker & Docker Compose
•	run containers on the server
 
4️⃣ Security Groups

These act like firewalls.
They decide:
•	What traffic is allowed
•	from Where
•	to which port

Example: opening port 22 for SSH access.

 
5️⃣ Elastic IP
A static public IP address that stays attached to your EC2 instance even if you restart it.
This is what allowed Jenkins to deploy my application.
 
🧠 What I Found Interesting

•	AWS is massive, but once you understand VPC → Subnets → EC2 → Security Groups, everything else starts to click.
•	The network layer is where most issues happen (and where most DevOps engineers become strong).
•	Hands-on practice is 100x more valuable than theory.
 
📘 Commands I Practised

# Check EC2 public IP
curl -4 ifconfig.me

# Install Docker on Amazon Linux 2023
sudo dnf install docker -y
sudo systemctl start docker
sudo usermod -aG docker ec2-user

# Install Docker Compose v2
sudo dnf install docker-compose-plugin -y
 
🧩 Challenges I Faced
•	Connecting to EC2 the first time
•	Understanding inbound/outbound rules
•	Installing the correct version of Docker Compose
•	Learning how AWS CLI works
•	Mistyping security groups and losing access
•	Forgetting that Amazon Linux 2023 uses dnf instead of yum

Each mistake helped me improve my troubleshooting confidence.
 
🎯 What’s Next?

•	EC2 deployments from Jenkins
•	Load balancers
•	More advanced VPC networking
•	IAM and user access security
•	S3 storage
•	Elastic Beanstalk and container deployments

