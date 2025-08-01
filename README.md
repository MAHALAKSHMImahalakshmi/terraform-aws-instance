# 🚀 terraform-aws-instance

Welcome to the **terraform-aws-instance** repository!  
This repository documents my personal learning journey into creating **reusable EC2 modules using Terraform**.  
If you’re looking for a **hands-on working example**, check out the [`roboshop-ec2-test`](https://github.com/MAHALAKSHMImahalakshmi/roboshop-ec2-test) repository which uses this module in action!

---

## 📚 My Learning Journey

### ✅ Understanding EC2 & AMI
- Learned that **every EC2 instance requires an AMI (Amazon Machine Image)**.
- Realized AMI acts like the **base OS + preinstalled setup**.
- Initially confused, but AMI is absolutely essential to boot an instance.

### 🛠️ Designing the Module
- Treated Terraform modules like **functions in programming**:  
  _Define once, reuse anywhere._
- Set defaults for commonly reused variables like `instance_type = "t3.micro"`.

### 🛡️ Adding Validations
- Implemented **Terraform `validation` blocks** to restrict invalid values.
- Example: allowed only certain instance types to prevent human errors.
- Learned to align both **variable-level and resource-level validations**.

### 📥 Required Inputs
- Made `sg_ids` (Security Group IDs) and `tags` required inputs.
- Ensures every instance is secure and properly tagged for visibility.

### 🧪 Extensive Testing
- Spun up EC2 instances in different environments.
- Faced errors when required values were missing —  
  but **Terraform's error messages saved me!** 🎉

### 📤 Outputs for Automation
- Exposed outputs like:
  - Public IP
  - Private IP
  - Instance ID  
- These outputs are helpful when connecting with other Terraform modules or automation scripts.

---

## 😵 Common Mistakes & What I Learned

| 💣 Mistake | 💡 What I Learned |
|-----------|-------------------|
| Forgot `sg_ids` or `tags` | Terraform failed — required inputs are essential |
| Confused resource vs variable validation | Always keep validations consistent |
| Copy-pasted wrong `module source` | Always **double-check module path** |
| No AMI or missing IAM permissions | Always verify **AMI ID & AWS credentials** |

---

## 🔗 How to Use This Module

### 1️⃣ Clone this Repository
```bash
git clone https://github.com/your-username/terraform-aws-instance.git](https://github.com/MAHALAKSHMImahalakshmi/terraform-aws-instance/
```

### 2️⃣ Reference it as a module in your project (see [`roboshop-ec2-test`](https://github.com/MAHALAKSHMImahalakshmi/roboshop-ec2-test) as an example).

### 3️⃣ Provide required variables: sg_ids, tags. [Optionally override: ami_id, instance_type.]
```bash
terraform init
terraform plan
terraform apply
```
### 🔐  Don’t forget to create required AWS credentials (and permissions).
Make sure AWS credentials are configured before using this module.

Run:
```bash

aws configure
```
You will be prompted to enter:
- AWS Access Key ID
- AWS Secret Access Key
- Default region name (e.g., us-east-1)

### 🧩 See Module in Action
Check out the working implementation here 👉 [`roboshop-ec2-test`](https://github.com/MAHALAKSHMImahalakshmi/roboshop-ec2-test)

That repo uses this module to spin up a real EC2 instance with automation and tagging.

### 💡 Summary
✅ Reusable EC2 module using Terraform
✅ Designed with best practices, validations & outputs
✅ Real-world tested in multiple environments
✅ Linked to practical example in roboshop-ec2-test


