terraform {
  backend "s3" {
    bucket = "benny-remote-state-bucket"
    key    = "devops/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-s3-backend"
  }
}
