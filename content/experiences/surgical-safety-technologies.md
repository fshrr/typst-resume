# Surgical Safety Technologies

---
title: Infrastructure & ML Engineer (listed as Full Stack ML Engineer)
company: Surgical Safety Technologies
location: Toronto, CA
dates: Mar 2021 — Apr 2022
---

## Tag Legend
- [infra] — systems, K8s, provisioning, networking, IaC
- [ml] — model work, pipelines, GPU, training/inference
- [product] — user-facing, business outcomes, scale metrics
- [api] — service/API design and implementation
- [leadership] — coordination, ownership, cross-team

---

## Bullets

- Designed and operated EKS-based Kubernetes platform for a real-time surgical AI pipeline — managing EC2 node pools, Kinesis ingestion, S3 storage, and CloudFormation IaC — processing 200+ hrs/day across 5 hospitals [infra]
- Provisioned a 6-node on-prem GPU cluster for HIPAA-compliant model training using Ansible to automate node configuration, data collection, and job scheduling [infra] [ml]
- Built internal FastAPI services for video upload, transcoding, ML inference dispatch, and dashboard data retrieval, integrated with the EKS workload orchestration layer [api] [infra]
- Engineered feature-flagged canary deploy pipelines for AI models and services, reducing production incidents by 40% [infra]
- Implemented serverless FastAPI endpoints for video upload, transcoding, ML inference, and dashboard data retrieval [api]
- Shipped and operated AWS infrastructure for a real-time surgical video AI pipeline — EKS-based inference, EC2, Kinesis, S3, and CloudFormation IaC — processing 200+ hrs/day across 5 hospitals [infra]

## Notes
- HIPAA compliance is a real constraint — mention when healthcare/compliance angle is relevant
- "Serverless FastAPI" and "integrated with EKS" are two framings of same work — pick one per resume
- 6-node GPU cluster: Ansible used for node config and data collection automation
- canary deploy stat (40%) is real
