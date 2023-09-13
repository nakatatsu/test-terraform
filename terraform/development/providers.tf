provider "aws" {
  default_tags {
    tags = {
      Project     = var.project
      Environment = var.environment
    }
  }

  profile = "development-mybook"
}
