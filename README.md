# Nirmata EKS Auto Mode Demo

This repository is a demo for policy-based governance of an EKS Auto Mode cluster using Nirmata Control Hub. It shows how Kyverno can be used to scan Terraform files as well as provide admission controls and lifecycle management of Kubernetes resources. 

## Repository Structure

```
.
├── terraform/           # Terraform configuration files
├── resources/          # Resource definitions
├── policies/           # Policy configurations
├── nodepools/          # Node pool definitions
├── nodepool-templates/ # Node pool templates
└── Makefile           # Build automation
```

## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured with appropriate credentials
- kubectl
- Access to an existing VPC and subnets in AWS
- [Nirmata Command Line, nctl](https://docs.nirmata.io/docs/nctl/installation/)

## Usage

1. Generate Terraform plan in JSON format:
   ```bash
   make tfjson
   ```

2. Scan using policies:
   ```bash
   nctl scan repostory --include tfplan.json
   ```

