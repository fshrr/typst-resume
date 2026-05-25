#import "../templates/resume-template.typ": *

#show: resume.with(
  name: "Fahim Shahreer",
  phone: "+1-647-975-9120",
  email: "fahim.shahreer@gmail.com",
  linkedin: "fahim-shahreer",
  github: "fshrr",
  website: "fahimshahreer.com",
  margin: 0.5in,
  section-spacing: 1.3em,
)

== Technical Skills

#skills(
  category: "Infrastructure",
  items: "Docker, Kubernetes, Ansible, Terraform/OpenTofu, Cloudformation, Traefik, Nginx, AWS, Azure, Tailscale",
)
#skills(category: "Languages & APIs", items: "Python (FastAPI, Flask), TypeScript (Node.js, React.js), Go(net/http)")
#skills(category: "ML & Data", items: "PyTorch, Numpy, Pandas, PostgreSQL, Redis")


== Experience

#experience(
  title: "Cofounder and Lead Engineer",
  company: "Echoes Events",
  location: "Toronto, CA",
  dates: "December 2024 — Present",
)
#items(
  [Built and operated AWS infrastructure for a consumer events platform, owning compute, storage, and deployment configuration end-to-end.],
  [Implemented a Python data pipeline ingesting and normalizing 400+ event sources into a unified schema with tag classification and vector embeddings.],
)

#experience(
  title: "Freelance Platform & AI Engineer",
  company: "",
  location: "Toronto, CA",
  dates: "January 2023 — Present",
)
#items(
  [Delivered production AI service integrations for clients — building and deploying RAG pipelines, tool-use APIs, and MCP servers on client infrastructure.],
)

#experience(
  title: "Full Stack Software Engineer",
  company: "Scotiabank",
  location: "Toronto, CA",
  dates: "Jun 2022 — Jan 2023",
)
#items(
  [Maintained 30+ BFF REST APIs serving Scotiabank's 10M+ digital banking users — optimizing payloads, enforcing PII redaction, and managing frontend data contracts.],
)

#experience(
  title: "Infrastructure & ML Engineer",
  company: "Surgical Safety Technologies",
  location: "Toronto, CA",
  dates: "Mar 2021 — Apr 2022",
)
#items(
  [Designed and operated EKS-based Kubernetes platform for a real-time surgical AI pipeline — managing EC2 node pools, Kinesis ingestion, S3 storage, and CloudFormation IaC — processing 200+ hrs/day across 5 hospitals.],
  [Provisioned a 6-node on-prem GPU cluster for HIPAA-compliant model training using Ansible to automate node configuration, data collection, and job scheduling.],
  [Built internal FastAPI services for video upload, transcoding, ML inference dispatch, and dashboard data retrieval, integrated with the EKS workload orchestration layer.],
  [Engineered feature-flagged canary deploy pipelines for AI models and services, reducing production incidents by 40%.],
)

#experience(
  title: "Full Stack Software Engineer",
  company: "BlueFlower Media",
  location: "Toronto, CA",
  dates: "Sep 2017 — Dec 2019",
)
#items(
  [Built Dockerized hosting infrastructure on VPS with Nginx reverse proxy and load balancing, serving 50+ client microsites at 70% lower cost than managed hosting.],
)

#experience(
  title: "Contract Machine Learning Engineer",
  company: "University of Toronto & LAMAS",
  location: "Toronto, CA",
  dates: "May 2017 — Oct 2017",
)
#items(
  [Designed a job scheduler for an auto-scaling AWS GPU EC2 cluster, managing workload distribution and resource allocation for distributed ML inference.],
)

== Relevant Projects

#experience(
  title: "Homelab",
  company: "",
  location: "Personal",
  dates: "2023 — Present",
)
#items(
  [Provisioned and manage a multi-node bare-metal Kubernetes cluster on Proxmox VE — covering node lifecycle, storage provisioning, and rolling cluster upgrades.],
  [Automated cluster configuration and service deployment with Ansible playbooks and Terraform modules, maintaining fully reproducible infrastructure state.],
  [Configured Traefik ingress with Tailscale mesh overlay for zero-trust service routing and secure remote access across the cluster.],
  [Deployed Prometheus/Grafana observability stack with custom dashboards for cluster health, node utilization, and workload alerting.],
  [Self-hosts Ollama for local LLM inference and a FOSS service stack, managing persistent volume claims and service configuration.],
)

== Education

#education(
  degree: "Honours Bachelor of Science",
  program: "Statistics",
  school: "University of Toronto",
  dates: "Class of 2021",
  courses: ("Systems Programming", "Data Structures & Algorithms", "Linear Algebra", "Differential Equations"),
)

#education(
  degree: "Master of Science",
  program: "Electrical and Computer Engineering",
  school: "Univ. of Colorado Boulder",
  dates: "Expected 2027",
  courses: (
    "Linux System & Kernel Programming",
    "Semiconductor Devices",
    "Real-Time Embedded Systems",
    "FPGA Design",
  ),
)
