# Node.js CI/CD Pipeline with GitHub Actions, SonarQube, Docker Hub, AWS, and Kubernetes

This repository contains a sample Node.js app and a CI/CD pipeline that uses GitHub Actions, SonarQube, Docker Hub, AWS, and Kubernetes to create a deployment.

## Pipeline Overview

The pipeline performs the following steps:

1. **Build**: Build the Node.js app using npm.
2. **Test**: Run unit tests and generate a test report.
3. **Code Quality**: Analyze the code using SonarQube and generate a code quality report.
4. **Dockerize**: Build a Docker image of the app and push it to Docker Hub.
5. **Deploy**: Deploy the app to a Kubernetes cluster running on AWS.

## Prerequisites

To use this pipeline, you need:

- A GitHub account
- A Docker Hub account
- An AWS account with an EC2 instance and a Kubernetes cluster set up
- A SonarQube server set up and running

## Setup

1. Clone this repository to your local machine.
2. Update the `sonar-project.properties` file with your SonarQube server details.
3. Set up the following secrets in your GitHub repository:

   - `DOCKER_USERNAME`: Your Docker Hub username
   - `DOCKER_PASSWORD`: Your Docker Hub password
   - `EC2_HOST`: The public IP address or DNS name of your EC2 instance
   - `EC2_USERNAME`: The username to use when logging in to your EC2 instance
   - `EC2_PASSWORD`: The password to use when logging in to your EC2 instance
   - `EC2_PORT`: The SSH port to use when logging in to your EC2 instance (usually port 22)
   - `KUBECONFIG`: The contents of your Kubernetes configuration file, which can be obtained by running `cat ~/.kube/config` on your EC2 instance
   - `SONAR_TOKEN`: A SonarQube access token with execute analysis permissions

   You can set up secrets in your repository by navigating to `Settings` > `Secrets` > `New secret`.

4. Update the `kubernetes-deployment.yml` file with your app details.

## Usage

To run the pipeline, simply push your changes to the `main` branch. GitHub Actions will automatically trigger the pipeline.

You can view the pipeline progress in the "Actions" tab in your GitHub repository.

Once the pipeline completes, your Node.js app will be deployed to the Kubernetes cluster running on AWS.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
