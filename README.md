# DEVOPSX 2.0

## End-to-End CI/CD, Containerization, Kubernetes Deployment, Infrastructure as Code & Monitoring

**Project Title:** DevOpsX 2.0 – Task Manager CI/CD and Monitoring Platform

**Project Type:** Major / Capstone Project

**Application:** Task Manager REST API

**Technologies:** Java, Spring Boot, Maven, Git, GitHub, Jenkins, Docker, Kubernetes, Terraform, Prometheus, Grafana

**Student Name:** Sakshi Singh

**Course/Branch:** MCA

**College:** IIT Patna

**Academic Year:** 2026

**Internship Domain:** DevOps Engineering

**Organization:** LaunchED

---

# 1. ABSTRACT

DevOpsX 2.0 is an end-to-end DevOps project developed to demonstrate the automation of software development, testing, containerization, deployment, infrastructure provisioning, and application monitoring.

The project uses a Spring Boot-based Task Manager REST API as the application. Git and GitHub are used for source code management, Jenkins automates the build and deployment pipeline, Docker is used for containerization, Kubernetes manages application deployment and scaling, Terraform provides Infrastructure as Code, and Prometheus and Grafana provide monitoring and visualization.

The project demonstrates a practical CI/CD workflow in which application source code is built and tested using Maven, packaged into a Docker image, deployed to Kubernetes, and monitored using Prometheus and Grafana.

The implementation also includes Kubernetes readiness and liveness probes and a Prometheus ServiceMonitor for collecting application-level metrics.

---

# 2. INTRODUCTION

Modern software development requires applications to be developed, tested, deployed, and monitored efficiently. Manual deployment processes can be time-consuming and may introduce configuration errors.

DevOps practices address these challenges by integrating development and operations activities through automation.

DevOpsX 2.0 was developed to demonstrate this complete workflow using commonly used DevOps tools.

The project starts with source code stored in GitHub. Jenkins automatically performs the application build and testing process. After successful testing, a Docker image is created. The image is deployed to a Kubernetes cluster, where multiple application replicas provide availability.

Terraform is used to define Kubernetes infrastructure as code. Prometheus collects application and infrastructure metrics, while Grafana provides a visual monitoring dashboard.

---

# 3. PROBLEM STATEMENT

Traditional application deployment can involve several manual steps:

* Building the application manually
* Running tests separately
* Creating deployment packages
* Building container images
* Deploying containers manually
* Checking application availability
* Monitoring application health manually

These processes can lead to inconsistent deployments, human errors, and difficulty in monitoring applications.

The objective of DevOpsX 2.0 is to automate these activities through a complete DevOps pipeline.

---

# 4. OBJECTIVES

The main objectives of DevOpsX 2.0 are:

1. Implement source code management using Git and GitHub.
2. Automate application building and testing using Jenkins.
3. Containerize the Spring Boot application using Docker.
4. Deploy and manage the application using Kubernetes.
5. Implement Infrastructure as Code using Terraform.
6. Implement application and infrastructure monitoring using Prometheus.
7. Create monitoring dashboards using Grafana.
8. Implement Kubernetes health checks using readiness and liveness probes.
9. Automate deployment verification through Jenkins.
10. Demonstrate an end-to-end DevOps workflow.

---

# 5. PROJECT SCOPE

The project covers the following DevOps modules:

### 5.1 Source Code Management

Git and GitHub are used to maintain application source code and project configuration.

### 5.2 Build Automation

Jenkins performs automated Maven build and test execution.

### 5.3 Containerization

Docker packages the application and its runtime environment into a portable container image.

### 5.4 Orchestration

Kubernetes manages application containers and provides replica management, service discovery, and health checks.

### 5.5 Infrastructure as Code

Terraform defines Kubernetes resources using configuration files.

### 5.6 Monitoring

Prometheus collects application and Kubernetes metrics, while Grafana provides visualization.

---

# 6. TECHNOLOGY STACK

| Technology  | Purpose                            |
| ----------- | ---------------------------------- |
| Java 21     | Application development            |
| Spring Boot | REST API framework                 |
| Maven       | Build and dependency management    |
| Git         | Version control                    |
| GitHub      | Remote source code repository      |
| Jenkins     | CI/CD automation                   |
| Docker      | Containerization                   |
| Kubernetes  | Container orchestration            |
| Terraform   | Infrastructure as Code             |
| Prometheus  | Metrics collection                 |
| Grafana     | Monitoring visualization           |
| Micrometer  | Spring Boot metrics integration    |
| YAML        | Kubernetes and configuration files |
| Windows     | Development environment            |

---

# 7. APPLICATION OVERVIEW

The application developed for the project is a simple Task Manager REST API.

The application provides task information through a REST endpoint.

### API Endpoint

`GET /api/tasks`

The application currently contains four sample tasks:

1. Learn Docker
2. Build Jenkins Pipeline
3. Deploy to Kubernetes
4. Monitor Application Health

The application is implemented using Spring Boot and runs on port 8080 inside the container.

---

# 8. PROJECT ARCHITECTURE

The overall architecture of DevOpsX 2.0 is:

```text
                    ┌──────────────────────┐
                    │       Developer      │
                    │   IntelliJ / Git     │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │       GitHub         │
                    │   Source Repository  │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │       Jenkins        │
                    │     CI/CD Pipeline   │
                    └──────────┬───────────┘
                               │
                 ┌─────────────┴─────────────┐
                 ▼                           ▼
        ┌─────────────────┐         ┌─────────────────┐
        │ Maven Build/Test│         │   Docker Build  │
        └────────┬────────┘         └────────┬────────┘
                 │                           │
                 └─────────────┬─────────────┘
                               ▼
                    ┌──────────────────────┐
                    │      Kubernetes      │
                    │     Cluster          │
                    └──────────┬───────────┘
                               │
                    ┌──────────┴──────────┐
                    ▼                     ▼
             ┌─────────────┐       ┌─────────────┐
             │ Task Manager│       │ Task Manager│
             │   Pod 1     │       │   Pod 2     │
             └──────┬──────┘       └──────┬──────┘
                    │                     │
                    └──────────┬──────────┘
                               ▼
                    ┌──────────────────────┐
                    │      Prometheus      │
                    │    Metrics Collection│
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │       Grafana        │
                    │ Monitoring Dashboard  │
                    └──────────────────────┘

                    Terraform
                       │
                       ▼
              Kubernetes Resources
```

---

# 9. SOURCE CODE MANAGEMENT – GIT AND GITHUB

Git is used as the version control system for the project.

The project repository is hosted on GitHub.

The repository contains:

* Spring Boot source code
* Maven configuration
* Dockerfile
* Jenkinsfile
* Kubernetes configuration
* Terraform configuration
* Monitoring configuration

The project follows a commit-based development approach so that changes can be tracked and maintained.

Examples of project commits include:

* Initial DevOpsX task manager application
* Add Terraform infrastructure configuration
* Add Prometheus monitoring configuration
* Add Kubernetes deployment and service configuration
* Add Kubernetes health probes
* Add Jenkins health verification
* Version Docker images for Kubernetes deployment

### Result

GitHub provides centralized source code management and allows Jenkins to obtain the latest version of the project.

**[Insert Screenshot – GitHub repository]**

---

# 10. APPLICATION BUILD USING MAVEN

Maven is used for building and testing the Spring Boot application.

The project uses Java 21 and Spring Boot.

The Maven wrapper is used to make the build process consistent.

The primary build command is:

```text
mvnw.cmd clean package
```

The command:

1. Cleans previous build files.
2. Compiles the source code.
3. Runs automated tests.
4. Packages the application into a JAR file.

The project build completed successfully with the application tests passing.

### Result

The application generates a packaged JAR file that is subsequently used to build the Docker image.

**[Insert Screenshot – Maven BUILD SUCCESS]**

---

# 11. JENKINS CI/CD PIPELINE

Jenkins is used to automate the CI/CD workflow.

The Jenkins pipeline contains the following major stages:

1. Build & Test
2. Build Docker Image
3. Check Kubernetes
4. Deploy to Kubernetes
5. Verify Deployment
6. Health Check

### Pipeline Workflow

```text
GitHub
   ↓
Checkout Source Code
   ↓
Maven Build & Test
   ↓
Build Docker Image
   ↓
Check Kubernetes Cluster
   ↓
Deploy Application
   ↓
Update Docker Image
   ↓
Verify Kubernetes Rollout
   ↓
Health Check
```

### Build & Test

Jenkins executes:

```text
mvnw.cmd clean package
```

The build must complete successfully before deployment proceeds.

### Docker Image

Jenkins builds a Docker image using the Jenkins build number.

Example:

```text
devopsx-task-manager:35
```

Using the build number allows different pipeline builds to have identifiable image versions.

### Kubernetes Check

Jenkins verifies the active Kubernetes context and available nodes.

### Deployment

Jenkins applies the Kubernetes deployment and service configuration.

The deployment image is then updated using the current Jenkins build number.

### Verification

Jenkins checks:

* Kubernetes rollout status
* Running pods
* Kubernetes service

### Health Check

The final stage verifies the deployment and confirms the expected number of replicas are available.

### Result

The Jenkins pipeline completed successfully with:

```text
Finished: SUCCESS
```

The final deployment showed:

```text
devopsx-task-manager   2/2   2   2
```

**[Insert Screenshot – Jenkins successful pipeline]**

**[Insert Screenshot – Jenkins stage view]**

---

# 12. DOCKER CONTAINERIZATION

Docker is used to package the Spring Boot application into a container image.

The project Dockerfile uses Java 21 runtime.

The Dockerfile performs the following operations:

1. Uses the Eclipse Temurin Java 21 runtime.
2. Creates the `/app` working directory.
3. Copies the generated Spring Boot JAR.
4. Exposes port 8080.
5. Starts the application.

The Docker image follows a build-number-based naming convention.

Example:

```text
devopsx-task-manager:35
```

This approach allows each Jenkins build to produce a uniquely identifiable image.

### Docker Workflow

```text
Spring Boot JAR
      ↓
Dockerfile
      ↓
Docker Build
      ↓
devopsx-task-manager:<BUILD_NUMBER>
      ↓
Kubernetes Deployment
```

**[Insert Screenshot – Docker image]**

**[Insert Screenshot – Running Docker container, if required]**

---

# 13. KUBERNETES DEPLOYMENT

Kubernetes is used as the container orchestration platform.

The project runs on the Docker Desktop Kubernetes cluster.

The active Kubernetes context is:

```text
docker-desktop
```

The Kubernetes cluster contains a control-plane node.

---

## 13.1 Kubernetes Deployment

The application is deployed using a Kubernetes Deployment.

The deployment is configured with:

```text
Replicas: 2
Container Port: 8080
```

Two replicas are used to demonstrate basic availability and scaling.

The deployment manages the application pods and ensures the required number of replicas are running.

---

## 13.2 Kubernetes Service

A Kubernetes Service exposes the application.

The service uses:

```text
Service Type: NodePort
Port: 8080
Target Port: 8080
```

The service selector identifies application pods using:

```text
app=devopsx-task-manager
```

---

## 13.3 Health Probes

The application deployment contains Kubernetes readiness and liveness probes.

### Readiness Probe

The readiness probe checks:

```text
/actuator/health/readiness
```

The readiness probe determines whether a pod is ready to receive traffic.

### Liveness Probe

The liveness probe checks:

```text
/actuator/health/liveness
```

The liveness probe helps Kubernetes determine whether the application is still running correctly.

### Result

The Kubernetes deployment successfully maintained two running replicas.

**[Insert Screenshot – kubectl get pods]**

**[Insert Screenshot – kubectl get deployment]**

**[Insert Screenshot – Kubernetes service]**

---

# 14. TERRAFORM – INFRASTRUCTURE AS CODE

Terraform is used to demonstrate Infrastructure as Code.

Instead of manually creating Kubernetes resources, Terraform configuration describes the required infrastructure.

The project uses the Kubernetes Terraform provider.

Terraform manages resources including:

* Kubernetes namespace
* Kubernetes deployment
* Kubernetes service

### Terraform Workflow

```text
Terraform Configuration
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
Kubernetes Resources
```

The Terraform configuration was successfully initialized, validated, planned, and applied.

This demonstrates how infrastructure configuration can be maintained as version-controlled code.

**[Insert Screenshot – terraform validate]**

**[Insert Screenshot – terraform apply]**

---

# 15. MONITORING WITH PROMETHEUS

Prometheus is used for collecting monitoring metrics.

The project uses the `kube-prometheus-stack`, which provides Prometheus and supporting monitoring components.

The Spring Boot application integrates with Prometheus through Micrometer.

The application exposes metrics through:

```text
/actuator/prometheus
```

The application configuration exposes the Prometheus endpoint through Spring Boot Actuator.

The Prometheus metrics include application and JVM-related information.

---

# 16. PROMETHEUS SERVICE MONITOR

A Kubernetes `ServiceMonitor` is configured for the Task Manager application.

The ServiceMonitor identifies the application service using:

```text
app=devopsx-task-manager
```

It collects metrics from:

```text
/actuator/prometheus
```

with a scrape interval of:

```text
15 seconds
```

The ServiceMonitor allows Prometheus to automatically discover and scrape the application metrics.

### Monitoring Flow

```text
Task Manager Application
          ↓
/actuator/prometheus
          ↓
Kubernetes Service
          ↓
ServiceMonitor
          ↓
Prometheus
          ↓
Grafana
```

The Prometheus target for the Task Manager application was verified as:

```text
UP
```

This confirms that Prometheus is successfully scraping the application metrics.

**[Insert Screenshot – Prometheus Targets showing Task Manager UP]**

**[Insert Screenshot – Prometheus metrics]**

---

# 17. GRAFANA MONITORING

Grafana is used as the visualization platform for the monitoring system.

The project uses Grafana as part of the kube-prometheus-stack.

Grafana was successfully deployed inside the Kubernetes monitoring namespace.

The Grafana interface was accessed through Kubernetes port forwarding.

Grafana provides a visual interface for monitoring Kubernetes and application metrics.

The monitoring stack also includes supporting components such as:

* Prometheus
* Grafana
* Alertmanager
* Node Exporter
* Kube State Metrics
* Prometheus Operator

### Monitoring Objective

The monitoring implementation allows the project to observe:

* Application health
* JVM metrics
* Kubernetes resources
* Pod status
* Node metrics
* Application availability

**[Insert Screenshot – Grafana login/dashboard]**

**[Insert Screenshot – Grafana monitoring dashboard]**

---

# 18. APPLICATION HEALTH MONITORING

Spring Boot Actuator is used to expose application health information.

The health endpoint is:

```text
/actuator/health
```

The application returned:

```json
{
  "groups": [
    "liveness",
    "readiness"
  ],
  "status": "UP"
}
```

This confirms that the application health endpoint is functioning correctly.

The liveness and readiness health groups are also used by Kubernetes probes.

---

# 19. ALERTING

The monitoring stack includes Alertmanager as part of the kube-prometheus-stack.

Alerting infrastructure is therefore available as part of the monitoring environment.

The monitoring architecture supports detection of application and Kubernetes conditions through Prometheus metrics and alerting rules.

For the project demonstration, monitoring status and application availability can be demonstrated through Prometheus and Grafana.

---

# 20. CI/CD WORKFLOW – END-TO-END

The complete DevOps workflow is:

### Step 1 – Development

The application source code is developed using IntelliJ IDEA.

### Step 2 – Version Control

The source code and configuration files are committed to Git and pushed to GitHub.

### Step 3 – Jenkins Checkout

Jenkins obtains the project source code from GitHub.

### Step 4 – Build and Test

Maven compiles the project, runs tests, and creates the application JAR.

### Step 5 – Docker Build

Jenkins creates a Docker image using the application JAR.

Example:

```text
devopsx-task-manager:35
```

### Step 6 – Kubernetes Verification

Jenkins checks the Kubernetes context and available nodes.

### Step 7 – Kubernetes Deployment

The application deployment and service are applied.

### Step 8 – Image Update

Jenkins updates the Kubernetes deployment with the Docker image corresponding to the current build number.

### Step 9 – Rollout Verification

Jenkins waits for the Kubernetes deployment rollout to complete.

### Step 10 – Health Verification

Jenkins verifies the deployment and running replicas.

### Step 11 – Monitoring

Prometheus collects application metrics.

### Step 12 – Visualization

Grafana provides monitoring dashboards.

---

# 21. TESTING

Testing was performed at multiple levels.

## 21.1 Application Testing

Spring Boot tests were executed through Maven.

The test execution completed successfully with:

```text
Tests run: 1
Failures: 0
```

---

## 21.2 API Testing

The Task Manager API was tested using the REST endpoint:

```text
/api/tasks
```

The API returned the expected task data.

---

## 21.3 Health Testing

The health endpoint was tested:

```text
/actuator/health
```

The result was:

```text
status: UP
```

---

## 21.4 Prometheus Testing

The Prometheus endpoint was tested:

```text
/actuator/prometheus
```

The endpoint successfully returned Prometheus metrics.

---

## 21.5 Kubernetes Testing

Kubernetes deployment status was verified using:

```text
kubectl get pods
kubectl get deployment
kubectl get service
```

The application maintained two running replicas.

---

## 21.6 Jenkins Testing

The complete Jenkins pipeline was executed successfully.

The final pipeline status was:

```text
Finished: SUCCESS
```

---

# 22. CHALLENGES FACED AND SOLUTIONS

Several practical challenges were encountered during project development.

## Challenge 1 – Jenkins Git Configuration

Jenkins initially reported that the selected Git installation did not exist.

### Solution

The Jenkins environment was configured to use the available Git installation. Git commands were successfully executed from Jenkins afterward.

---

## Challenge 2 – Docker Port Conflict

The application encountered port conflicts because ports were already being used by Docker-related processes.

### Solution

Different ports and port forwarding configurations were used where necessary.

---

## Challenge 3 – Kubernetes Application Deployment

The application required correct Kubernetes deployment and service configuration.

### Solution

Deployment and Service YAML files were configured and tested using `kubectl`.

---

## Challenge 4 – Kubernetes Health Checks

The application needed endpoints suitable for Kubernetes readiness and liveness probes.

### Solution

Spring Boot Actuator health endpoints were enabled and configured for Kubernetes probes.

---

## Challenge 5 – Prometheus Metrics Endpoint

Initially, the `/actuator/prometheus` endpoint returned HTTP 404 when an older application image was tested.

### Solution

The application was rebuilt with Micrometer Prometheus support and the updated Jenkins Docker image was deployed. The Prometheus endpoint then returned metrics successfully.

---

## Challenge 6 – ServiceMonitor Configuration

Prometheus required a Kubernetes ServiceMonitor to discover the application.

### Solution

A ServiceMonitor was created with:

* Application namespace: `default`
* Service selector: `app=devopsx-task-manager`
* Port: `http`
* Metrics path: `/actuator/prometheus`
* Scrape interval: 15 seconds

The Prometheus target was subsequently verified as **UP**.

---

## Challenge 7 – Helm Configuration

The monitoring stack was already installed under the Helm release name `monitoring`.

### Solution

Instead of reinstalling the stack, the existing release was inspected and reused.

---

# 23. PROJECT RESULTS

The DevOpsX 2.0 project successfully demonstrates an end-to-end DevOps workflow.

The final implementation provides:

* Git-based source control
* GitHub repository management
* Automated Jenkins build and testing
* Docker containerization
* Versioned Docker images
* Kubernetes deployment
* Two application replicas
* Kubernetes Service
* Readiness and liveness probes
* Terraform-based Kubernetes infrastructure
* Prometheus application metrics
* Prometheus ServiceMonitor
* Grafana monitoring
* Alertmanager monitoring infrastructure
* Automated deployment verification
* Application health verification

The Jenkins pipeline successfully completed the complete build, containerization, deployment, and verification workflow.

The Prometheus target for the application was also successfully verified as **UP**.

---

# 24. ADVANTAGES

The implemented solution provides several advantages:

### Automation

The Jenkins pipeline reduces manual build and deployment activities.

### Consistency

Docker provides a consistent runtime environment.

### Scalability

Kubernetes allows multiple application replicas to run simultaneously.

### Reliability

Readiness and liveness probes allow Kubernetes to monitor application health.

### Infrastructure Management

Terraform allows infrastructure configuration to be represented as code.

### Monitoring

Prometheus provides metrics collection while Grafana provides visualization.

### Version Control

Git and GitHub maintain a history of project changes.

---

# 25. SECURITY AND PRODUCTION READINESS CONSIDERATIONS

The project demonstrates basic DevOps security and reliability practices.

The implementation separates application configuration and infrastructure configuration into version-controlled files.

Kubernetes health probes improve application reliability.

Docker provides isolated application execution.

Infrastructure configuration is maintained using Terraform.

For a production deployment, additional security measures could be introduced, such as:

* Secrets management
* HTTPS/TLS
* Role-Based Access Control
* Network policies
* Container image vulnerability scanning
* Private container registry
* Authentication and authorization
* Centralized logging

These are considered future enhancements and are outside the current project scope.

---

# 26. FUTURE SCOPE

The current implementation fulfills the core DevOpsX 2.0 project requirements.

Possible future improvements include:

1. Automated GitHub webhook-triggered Jenkins builds.
2. Container image security scanning.
3. HTTPS-enabled application access.
4. Advanced Grafana dashboards.
5. Custom Prometheus alert rules.
6. Centralized logging.
7. Deployment to a cloud Kubernetes platform.
8. Automated rollback mechanisms.
9. Kubernetes Ingress configuration.
10. More comprehensive application test coverage.

---

# 27. LEARNING OUTCOMES

Through this project, the following concepts were practically implemented:

* Git version control
* GitHub repository management
* Maven application builds
* Jenkins CI/CD pipelines
* Docker containerization
* Kubernetes deployments
* Kubernetes services
* Kubernetes health probes
* Infrastructure as Code using Terraform
* Prometheus monitoring
* Grafana dashboards
* Application health monitoring
* CI/CD troubleshooting
* Kubernetes troubleshooting
* Integration of multiple DevOps tools

The project provided practical experience in integrating different DevOps technologies into a single workflow.

---

# 28. CONCLUSION

DevOpsX 2.0 successfully demonstrates an end-to-end DevOps implementation for a Spring Boot Task Manager application.

The project integrates Git and GitHub for source code management, Jenkins for CI/CD automation, Docker for containerization, Kubernetes for orchestration, Terraform for Infrastructure as Code, and Prometheus and Grafana for monitoring.

The CI/CD pipeline automatically builds and tests the application, creates a versioned Docker image, deploys it to Kubernetes, verifies the deployment, and performs health checks.

The application runs with multiple Kubernetes replicas and uses readiness and liveness probes for improved reliability.

Prometheus successfully collects application metrics through the configured ServiceMonitor, and Grafana provides the monitoring interface.

Overall, DevOpsX 2.0 demonstrates how different DevOps tools can be integrated into a practical automated software delivery and monitoring workflow.

---

# 29. PROJECT DIRECTORY STRUCTURE

The major project structure is:

```text
task-manager/
│
├── src/
│   ├── main/
│   │   └── java/
│   │       └── com/
│   │           └── devopsx/
│   │               └── task_manager/
│   │
│   └── test/
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── terraform/
│   ├── main.tf
│   └── .gitignore
│
├── monitoring/
│   └── task-manager-servicemonitor.yaml
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
├── mvnw
└── mvnw.cmd
```

---

# 30. IMPORTANT COMMANDS USED

### Build Application

```text
mvnw.cmd clean package
```

### Check Kubernetes

```text
kubectl get nodes
```

### Check Pods

```text
kubectl get pods
```

### Check Deployment

```text
kubectl get deployment
```

### Check Services

```text
kubectl get svc
```

### Check Prometheus

```text
kubectl get prometheus -n monitoring
```

### Check ServiceMonitors

```text
kubectl get servicemonitor -n monitoring
```

### Terraform Initialization

```text
terraform init
```

### Terraform Validation

```text
terraform validate
```

### Terraform Plan

```text
terraform plan
```

### Terraform Apply

```text
terraform apply
```

---

# 31. SCREENSHOT CHECKLIST

The following screenshots should be included in the final report.

### GitHub

* [ ] GitHub repository homepage
* [ ] Project files/commit history

### Application

* [ ] Task Manager API response
* [ ] `/actuator/health` response
* [ ] `/actuator/prometheus` metrics

### Jenkins

* [ ] Jenkins job
* [ ] Successful pipeline
* [ ] Pipeline stages
* [ ] Console output showing `Finished: SUCCESS`

### Docker

* [ ] Docker image
* [ ] Running container

### Kubernetes

* [ ] `kubectl get nodes`
* [ ] `kubectl get pods`
* [ ] `kubectl get deployment`
* [ ] `kubectl get svc`
* [ ] Health probes/deployment configuration

### Terraform

* [ ] `terraform validate`
* [ ] `terraform plan`
* [ ] `terraform apply`

### Prometheus

* [ ] Prometheus targets page
* [ ] Task Manager target showing `UP`
* [ ] Prometheus metrics

### Grafana

* [ ] Grafana login/dashboard
* [ ] Monitoring dashboard
* [ ] Application/Kubernetes metrics

---

# 32. FINAL PROJECT STATUS

| Requirement               | Implementation Status |
| ------------------------- | --------------------- |
| Git/GitHub                | Completed             |
| Jenkins CI/CD             | Completed             |
| Maven Build & Test        | Completed             |
| Docker                    | Completed             |
| Kubernetes                | Completed             |
| Kubernetes Health Probes  | Completed             |
| Terraform                 | Completed             |
| Prometheus                | Completed             |
| Grafana                   | Completed             |
| Application Metrics       | Completed             |
| ServiceMonitor            | Completed             |
| Prometheus Target         | UP                    |
| Deployment Verification   | Completed             |
| Health Verification       | Completed             |
| Project Documentation     | Prepared              |
| Demonstration             | To be recorded        |
| Presentation              | To be prepared        |
| LinkedIn Post             | To be prepared        |
| Final LaunchED Submission | To be submitted       |

---

# 33. REFERENCES

The project was implemented using the official documentation and tooling associated with:

* Git
* GitHub
* Spring Boot
* Apache Maven
* Jenkins
* Docker
* Kubernetes
* Terraform
* Prometheus
* Grafana
* Micrometer

---

# 34. DECLARATION

I hereby declare that the project titled **“DevOpsX 2.0 – End-to-End CI/CD, Containerization, Kubernetes Deployment, Infrastructure as Code & Monitoring”** was developed as part of my academic/capstone project work.

The project demonstrates the practical integration of DevOps tools and technologies for automated software build, deployment, infrastructure management, and monitoring.

**Student Name:** Sakshi Singh

**Signature:** Sakshi Singh

**Date:** 29.09.26

**College:** IIT Patna
