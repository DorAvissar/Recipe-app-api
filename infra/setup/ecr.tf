##############################################
# Create ECR repos for storing Docker images #
##############################################
# Define an AWS ECR repository for the application
resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app" # Set the repository name
  image_tag_mutability = "MUTABLE"            # Allow mutable image tags (tags can be overwritten)
  force_delete         = true                 # Enable force deletion, which allows the repository to be deleted even if it contains images
  image_scanning_configuration {              # Configure image scanning settings
    scan_on_push = false                      # NOTE: Update to true for real deployments to enable automated security scanning on image push
  }
}

resource "aws_ecr_repository" "proxy" {         # Define an AWS ECR repository for the proxy
  name                 = "recipe-app-api-proxy" # Set the repository name
  image_tag_mutability = "MUTABLE"              # Allow mutable image tags (tags can be overwritten)
  force_delete         = true                   # Enable force deletion, which allows the repository to be deleted even if it contains images
  image_scanning_configuration {                # Configure image scanning settings
    scan_on_push = false                        # NOTE: Update to true for real deployments to enable automated security scanning on image push
  }
}
