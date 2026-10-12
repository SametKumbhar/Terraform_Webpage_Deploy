# Static Website Deployment Using Terraform, AWS EC2, and Docker

## Project Description
This project demonstrates how to deploy a static website from a GitHub repository to an AWS EC2 instance using Terraform and Docker. Terraform automatically creates the required AWS infrastructure, installs Docker and Git, clones the repository, builds a Docker image, and runs the website container.

## Technologies Used
- AWS EC2
- Terraform
- Docker
- Git and GitHub
- AWS CLI
- HCL

## Project Files
- `main.tf` — Configures the AWS provider, creates a security group and EC2 instance, and automates website deployment using EC2 user data.
- `variables.tf` — Defines the AWS region, AMI ID, and EC2 instance type.
- `outputs.tf` — Displays the EC2 instance ID, public IP address, and website URL.

## AWS Region
Asia Pacific (Mumbai) — `ap-south-1`

## Deployment Process
1. Configure AWS credentials using AWS CLI.
2. Initialize Terraform using `terraform init`.
3. Validate the configuration using `terraform validate`.
4. Review the infrastructure plan using `terraform plan`.
5. Create the infrastructure using `terraform apply`.
6. Install Docker and Git automatically on EC2.
7. Clone the static website repository from GitHub.
8. Build the Docker image and run the website container.
9. Access the deployed website using the public IP address.

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

To remove the resources created by this project:

```bash
terraform destroy
```

## Learning Objectives
- Understand Infrastructure as Code (IaC).
- Provision AWS EC2 instances using Terraform.
- Configure AWS security groups for HTTP access.
- Automate software installation using EC2 user data.
- Build and run Docker images from a GitHub repository.
- Deploy a static website on AWS.

## GitHub Repository
Source code: https://github.com/SametKumbhar/Static_Advertising_Fruit

## Disclaimer
AWS charges may apply depending on the resources used. Review AWS pricing and destroy unused infrastructure after completing the practical.
