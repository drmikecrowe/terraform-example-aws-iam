// Account variables
terragrunt = {
  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config {
      encrypt = "true"
      bucket  = "example-com-example-dev-terraform"
      key     = "aws_iam.tfstate"
      region  = "us-east-1"
    }
  }
}

aws_account = "example-dev"
aws_profile = "example-dev"
aws_region = "us-east-1"

