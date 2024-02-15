# Casetext
DockerProject

## Background
To be an effective lawyer, one must understand the law. Including, sometimes, terms with highly specific
definitions found in various governments’ statues and regulations.
Here in Google Drive is a simple REST service that helps achieve this understanding. It serves a
subset of definitions spelled out in the United States Code, one of the highest authorities in the country.
It's a Python application that uses Poetry to manage dependencies.

## Problem
We’ve written this service, but haven’t deployed it. We need to get it online! We have applications that
want to use it.
Deliverable
Implement a means of building this service, deploying it to a Kubernetes cluster, and exposing it to the
public internet.

## We’re looking for
- A Dockerfile
- A means of CI/CD, like a Jenkinsfile, GitHub Actions workflow, Azure Devops pipeline..
- Kubernetes manifests
- A brief explanation of how a teammate could deploy and monitor this

Please don’t roll out any cloud resources. Assume you have a fully working environment, including your
preferred CI/CD service, image host, and Kubernetes cluster. We’re interested in your
application-specific uses of these services and discussing your decisions.
Feel free to ask questions if you get stuck anywhere.

## Evaluation
We’ll evaluate your solution on the following criteria:
- Does it work?
- Is it clear and concise?
- Does it practice good security hygiene? Does it hardcode any keys or secrets?
- Does it prevent broken code updates from impacting end users?
- Are deployments resistant to application failure?
- Can deployments handle spikes in traffic?
- Can it be monitored?
- Can it serve as a template for new projects?

  ## Steps

  We start building the Dockerfile and gitlab-ci.yaml in legal-term-api

  Dockerfile
 <img width="681" alt="Screen Shot 2024-02-15 at 12 01 29 PM" src="https://github.com/OksanaLevchenko/Casetext/assets/114625801/25650129-109f-46b2-9d86-5195dffe9e7f">

 gitlab-ci.yaml
 
<img width="567" alt="Screen Shot 2024-02-15 at 12 01 39 PM" src="https://github.com/OksanaLevchenko/Casetext/assets/114625801/f372e3ab-4055-45b3-a976-56a0c87ebb81">
