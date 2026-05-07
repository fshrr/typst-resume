#import "../src/resume-template.typ": *

#show: resume.with(
  name: "Fahim Shahreer",
  phone: "+1-647-975-9120",
  email: "fahim.shahreer@gmail.com",
  linkedin: "fahim-shahreer",
  github: "fshrr",
  website: "fahimshahreer.com",
)

== Technical Skills

#skills(
  category: "Infrastructure & Dev Tools",
  items: "AWS, Docker, Kubernetes, Ansible, OpenTofu, Linux, Prometheus, Grafana, PostgreSQL, Redis",
)
#skills(category: "Languages & Frameworks", items: "Python, Go, TypeScript, SQL, FastAPI, Next.js/React")
#skills(category: "Machine Learning", items: "PyTorch, Langchain, LlamaIndex, Google ADK, Numpy, Pandas")


== Experience

#experience(
  title: "Cofounder and Lead Engineer",
  company: "Echoes Events",
  location: "Toronto, CA",
  dates: "December 2024 — Present",
)
#items(
  [Owned a wellness events platform end-to-end, using 100+ discovery interviews to frame problems and ship features.],
  [Built a Python batch pipeline ingesting 400+ event sources into a unified schema with tags and embeddings.],
  [Shipped a TanStack Start app on AWS covering host onboarding, event posting, and booking flows.],
  [Implemented embedding-based event recommendations and buddy matching to personalize user discovery.],
)

#experience(
  title: "Independent Machine Learning and AI Engineer",
  company: "",
  location: "Toronto, CA",
  dates: "January 2023 — Present",
)
#items(
  [Built conversational AI chatbots for clients using LangChain and Google ADK with multi-turn context-aware dialogue.],
  [Developed RAG pipelines over client data using LlamaIndex and pgvector for personalized knowledge retrieval.],
  [Deployed standalone MCP server processes exposing client knowledge bases as structured, tool-callable APIs — enabling agent workflows to query live data through a defined protocol layer.],
)

#experience(
  title: "Full Stack Software Engineer",
  company: "Scotiabank",
  location: "Toronto, CA",
  dates: "Jun 2022 — Jan 2023",
)
#items(
  [Delivered e-transfer send and receive UI, Scotiabank's most-used digital banking feature, serving 10M+ users.],
  [Maintained 30+ BFF REST APIs in Next.js — trimming payloads, redacting PII, and decoupling frontend data needs.],
  [Created a 20+ component shared React UI library, eliminating 5% redundant code and 40% recurring bugs.],
)

#experience(
  title: "Full Stack ML Engineer",
  company: "Surgical Safety Technologies",
  location: "Toronto, CA",
  dates: "Mar 2021 — Apr 2022",
)
#items(
  [Shipped and operated AWS infrastructure for a real-time surgical video AI pipeline — EKS-based inference, EC2, Kinesis, S3, and CloudFormation IaC — processing 200+ hrs/day across 5 hospitals.],
  [Implemented serverless FastAPI endpoints for video upload and transcoding, ML inference, and dashboard data retrieval.],
  [Provisioned and managed a 6-GPU on-prem GPU cluster for HIPAA-compliant surgical video model training, using Ansible to automate dataset collection from hospital cameras, data movement, and training job orchestration.],
  [Engineered feature-flagged canary deploy pipelines for UIs and AI models, cutting production incidents 40%.],
)

#experience(
  title: "Full Stack Software Engineer",
  company: "BlueFlower Media",
  location: "Toronto, CA",
  dates: "Sep 2017 — Dec 2019",
)
#items(
  [Worked with 20+ small businesses to scope needs, prototype quickly, and ship production web products end-to-end.],
  [Built a Dockerized PHP hosting platform on VPS with Nginx load balancing, serving 20+ client sites at 70% lower hosting cost.],
)

#experience(
  title: "Contract Machine Learning Engineer",
  company: "University of Toronto & LAMAS",
  location: "Toronto, CA",
  dates: "May 2017 — Oct 2017",
)
#items(
  [Fine-tuned PyTorch KittiSeg for feature segmentation in architectural facade-to-3D pipeline, saving 12hrs/project.],
  [Designed an auto-scaling AWS EC2 GPU cluster (1–6 self-provisioned instances) and load-balanced job scheduler for distributed ML inference workloads.],
)

== Selected Projects

#project(
  name: "Ledger - A Personal Tracker App",
  // github: "fshrr/igem",
  description: "A voice assisted personal tracker that uses LLMs to make tracking personal progress seamless and built in data analytics that allows presonal",
)

#project(
  name: "Obisidian Tutor Plugin",
  // github: "fshrr/igem",
  description: "An auto-updating Obsidian chatbot tutor powered by a RAG pipeline over personal notes, generating spaced-repetition prompts to compound learning over time.",
)

// #project(
// 	name: "Protein Modelling @ iGEM Toronto",
// 	// github: "fshrr/igem",
// 	description: "Protein structure modelling using PyRosetta and machine learning methods for a paper-based gold biosensor and a light-inducible gene expression system using CRISPR. Bronze Medal.",
// )
== Education

#education(
  degree: "Honours Bachelor of Science",
  program: "Statistics",
  school: "University of Toronto",
  dates: "Class of 2021",
)

#education(
  degree: "Master of Science",
  program: "Electrical and Computer Engineering",
  school: "University of Colorado Boulder",
  dates: "Expected 2027",
)
