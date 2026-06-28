#import "/templates/active/resume-template.typ": *
#import "/profile.typ": name, phone, email, linkedin, github, website

#show: resume.with(
  name: name,
  phone: phone,
  email: email,
  linkedin: linkedin,
  github: github,
  website: website,
  margin-x: 0.5in,
  margin-y: 0.5in,
  section-spacing: 1.3em,
)

== Technical Skills

#skills(
  category: "Infrastructure",
  items: "Kubernetes (EKS, bare-metal), Docker, Ansible, OpenTofu, ArgoCD, Cilium, Nginx, Tailscale",
)
#skills(category: "Languages & APIs", items: "Python (FastAPI, Flask), Go (net/http), TypeScript (Node.js), Bash")
#skills(category: "Observability & CI/CD", items: "Prometheus, Grafana, Loki, Hubble, Arize AI, GitHub Actions")
#skills(category: "Storage & Data", items: "PostgreSQL, Redis, ElasticSearch, ZFS, Longhorn")


== Experience

#experience(
  title: "Cofounder and Lead Engineer",
  company: "Echoes Events",
  location: "Toronto, CA",
  dates: "December 2024 — Present",
)
#items(
  [Built and operated AWS infrastructure for a consumer events platform, owning compute, storage, and deployment end-to-end.],
  [Implemented a Python data pipeline ingesting and normalizing 400+ event sources into a unified schema with tag classification and vector embeddings.],
)

#experience(
  title: "Freelance Platform & AI Engineer",
  company: "",
  location: "Toronto, CA",
  dates: "January 2023 — Present",
)
#items(
  [Delivered production AI service integrations for clients: RAG pipelines, tool-use APIs, and MCP servers deployed on client infrastructure.],
  [Created custom MCP servers to connect chatbots with client knowledge bases and live data access.],
)

#experience(
  title: "Full Stack Software Engineer",
  company: "Scotiabank",
  location: "Toronto, CA",
  dates: "Jun 2022 — Jan 2023",
)
#items(
  [Delivered e-transfer send and receive UI, Scotiabank's most-used digital banking feature, serving 10M+ users.],
  [Maintained 30+ BFF REST APIs in Next.js, trimming payloads, redacting PII, and decoupling frontend data needs.],
)

#experience(
  title: "Infrastructure & ML Engineer",
  company: "Surgical Safety Technologies",
  location: "Toronto, CA",
  dates: "Mar 2021 — Apr 2022",
)
#items(
  [Designed and operated EKS-based Kubernetes platform for a real-time surgical AI pipeline, managing EC2 node pools, Kinesis ingestion, S3 storage, and CloudFormation IaC, processing 200+ hrs/day across 5 hospitals.],
  [Provisioned a 6-node on-prem GPU cluster for HIPAA-compliant model training using Ansible to automate node configuration, data collection, and job scheduling.],
  [Built serverless APIs for video upload, transcoding, ML inference dispatch, and dashboard data retrieval, integrated with the EKS workload orchestration layer.],
  [Engineered feature-flagged canary deploy pipelines for AI models and services, reducing production incidents by 40%.],
)

#experience(
  title: "Contract Machine Learning Engineer",
  company: "University of Toronto & LAMAS",
  location: "Toronto, CA",
  dates: "May 2017 — Oct 2017",
)
#items(
  [Designed an auto-scaling AWS GPU EC2 job scheduler managing workload distribution for distributed ML inference.],
  [Built a Django app with a GPU job scheduler handling 50+ Neural Style Transfer requests/hour during ML workshops.],
)


== Relevant Projects

#experience(
  title: "Homelab",
  company: "",
  location: "Personal",
  dates: "2023 — Present",
)
#items(
  [Provisioned and operate a multi-node bare-metal Kubernetes cluster on Proxmox VE running Talos Linux.],
  [Managed all VM and LXC provisioning declaratively with OpenTofu and the bpg/proxmox provider, maintaining reproducible infrastructure state across hosts.],
  [Deployed ArgoCD for GitOps: K8s workloads declared in git with sync diffs and topology visualization.],
  [Configured Cilium as the CNI: eBPF networking, kube-proxy replacement, Gateway API routing, and Hubble observability.],
)

== Education

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

#education(
  degree: "Honours Bachelor of Science",
  program: "Statistics",
  school: "University of Toronto",
  dates: "Class of 2021",
  courses: ("Systems Programming", "Data Structures & Algorithms", "Linear Algebra", "Differential Equations"),
)
