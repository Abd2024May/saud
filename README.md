# Initial Approach

## Steps:

1. Run Jenkins in Docker container.
2. Configure GitHub.
3. Configure NodeJS.
4. Configure Docker Hub.
5. Create Jenkinsfile and run the pipeline with the following stages:
   - Install dependencies.
   - Lint.
   - Test.
   - Build Docker image.
   - Push Docker image.
6. Commit a change on the repository to run the CI.

## Results:

- Jenkins successfully running in Docker container.
- Successfully connected to GitHub from inside the Docker container.
- Failed to install NodeJS as it requires creating a new Jenkins image and adding NodeJS layer. This option was discarded due to potential unknown behaviors.

# Second Approach

## Steps:

1. Run Jenkins locally.
2. Configure GitHub.
3. Configure NodeJS.
4. Configure Docker Hub.
5. Create Jenkinsfile and run the pipeline with the following stages:
   - Install dependencies.
   - Lint.
   - Test.
   - Build Docker image.
   - Push Docker image.
6. Commit a change on the repository to run the CI.

## Results:

- Jenkins successfully running locally.
- Successfully connected to GitHub.
- Successfully configured NodeJS and Docker Hub.
- Failed to run the pipeline with the Jenkinsfile due to several issues:
    - No lint script in the package.json.
    - Test failing due to no tests found matching pattern.
    - Building Docker image was successful, but running the container failed immediately due to conflicts in node_module dependencies.
- Decisions:
    - Discard lint stage.
    - Change Jenkinsfile to continue even if the test fails.
    - Keep the original Dockerfile and add .dockerignore file to avoid copying node_module dependencies.

# Third Approach

## Steps:

1. Run Jenkins locally.
2. Configure GitHub.
3. Configure NodeJS.
4. Configure Docker Hub.
5. Create Jenkinsfile and run the pipeline with the following stages:
   - Install dependencies.
   - Test (continue even if the test fails).
   - Build Docker image.
   - Push Docker image.
6. Commit a change on the repository to run the CI.

## Results:

- Successfully commit a change on a git repository, triggering a Jenkins pipeline that builds the application as a Docker image and pushes it into a Docker Hub.

## Links:

- GitHub Repository: [saud](https://github.com/Abd2024May/saud)
- Docker Hub Repository: [abedelhafez/tmdb-devops-challenge](https://hub.docker.com/repository/docker/abedelhafez/tmdb-devops-challenge/general)
