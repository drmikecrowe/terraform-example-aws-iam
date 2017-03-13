// Account variables
terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "example-com-example-prod-terraform"
      key     = "aws_iam.tfstate"
      region  = "us-east-1"
    }
  }
}

aws_account = "example-prod"
aws_profile = "example-prod"
aws_region = "us-east-1"

