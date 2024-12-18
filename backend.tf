terraform {
  backend "s3" {
    bucket         = "mys3bucketforhandson-123"
    key            = "state/terraform.tfstate"
    region         = "ap-southeast-2"
  }
}
