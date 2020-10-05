# Task
Imaginary repository has folder inside named themes and you have to copy this folder inside  your base image. Create gitlab-ci.yml and Dockerfile. 

# Assumption
- Imaginary repository is treated as a git location.
- Base image is nginx.
- Pipeline should run in a same location/repository as a part of the solution.
- Destination location /usr/share/nginx/html/themes/
- Tag versioning is not handled by variables
- No caching in Dockerfile due to unknown dependencies

# Description

Pipeline will use special environment variables to pull latest image from registry.
- $CI_REGISTRY_USER 
- $CI_REGISTRY_PASSWORD
- $CI_REGISTRY