### Terraform AWS Provider Configuration

This Terraform configuration initializes the AWS provider and specifies the AWS region where infrastructure resources will be created.

#### Details:
- Uses the AWS provider to interact with AWS services.
- The region is set to `ap-south-1` (Mumbai).
- Credentials should be managed securely using environment variables, AWS CLI profiles, or IAM roles instead of hardcoding them.

#### Best Practices:
- Do NOT hardcode AWS Access Keys or Secret Keys in Terraform files.
- Use `aws configure`, environment variables, or IAM roles for authentication.
- Keep Terraform state and credentials secure to avoid unauthorized access.

This configuration serves as a basic starting point for deploying AWS infrastructure using Terraform.
