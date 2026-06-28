#import "/templates/active/modern-cv-template.typ": *
#import "/profile.typ": name, phone, email, linkedin, github, website

#show: resume.with(
  name: name,
  phone: phone,
  email: email,
  linkedin: linkedin,
  github: github,
  website: website,
  accent-color: "#000000",
  font: "New Computer Modern",
  font-size: 10pt,
)

== Technical Skills

- *ML & AI:* LangChain, LlamaIndex, PyTorch, MCP, pgvector, Arize, NeMo Guardrails, DSPy, Ollama
- *Languages & Frameworks:* Python (FastAPI), TypeScript (Next.js, React.js, Node.js), Go (net/http), SQL
- *Infrastructure & Ops:* AWS, Azure, Kubernetes, Docker, GitHub Actions, PostgreSQL, Redis

== Experience

#work(
  title: "Technical Cofounder",
  company: "Echoes Events",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "December 2024", end-date: "Present"),
)
- Acted as fractional CTO, translating 100+ non-technical stakeholder discovery interviews into architectural requirements and full-stack production systems.
- Built a Python ELT pipeline across 400+ event sources: deduplication, normalization, LLM-based tagging, and human review to filter low-quality or off-platform events before publishing.
- Shipped a TanStack Start app on Azure covering host onboarding, event posting, and booking flows.
- Implemented embedding-based event recommendations and buddy matching to personalize discovery.

#work(
  title: "Forward Deployed AI Engineer",
  company: "Freelancer",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "January 2023", end-date: "Present"),
)
- Deployed an air-gapped multilingual document intelligence system (LangChain, Docling, BGE-M3, LlamaIndex, Ollama) for an immigration law firm, enabling multilingual document Q&A with citations, IRCC checklist gap detection, and cross-document inconsistency flagging, cutting clerical prep time 50%.
- Shipped a voice intake pipeline (Twilio, Whisper, GPT-4o) for a physiotherapist that converts patient voicemails into structured symptom briefs delivered to a React dashboard, cutting session time from 45 to 30 minutes.
- Evaluated prompt engineered Gemini 2.5 with RAG against LoRA fine-tuned Qwen2.5-7B for accuracy, latency and serving cost when delivering a philosopher chatbot, grounded in source texts with cross-session memory and guardrails.

#work(
  title: "Full Stack Software Engineer",
  company: "Scotiabank",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "Jun 2022", end-date: "Jan 2023"),
)
- Delivered e-transfer send and receive UI, Scotiabank's most-used digital banking feature, serving 10M+ users.
- Maintained 30+ BFF REST APIs in Next.js — trimming payloads, redacting PII, and decoupling frontend data needs.
- Created a 20+ component shared React UI library, eliminating 5% redundant code and 40% recurring bugs.

#work(
  title: "Full Stack ML Engineer",
  company: "Surgical Safety Technologies",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Apr 2022"),
)
- Shipped an AWS video AI pipeline processing 200+ hrs/day for 5 hospitals, with real-time inference and transcoding.
- Built 3 React/D3 dashboards (admin, user, peer) using Kinesis streams and batch data, raising video uploads 400%.
- Rolled out feature-flagged canary deploys for UIs and AI models, cutting production incidents 40%.
- Provisioned a 6-node on-prem GPU cluster for HIPAA-compliant automatic model training using docker and ansible.

#work(
  title: "Forward Deployed Engineer",
  company: "BlueFlower Media",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "Sep 2017", end-date: "Dec 2019"),
)
- Embedded with 20+ SMB clients across diverse industries to diagnose operational bottlenecks, define technical playbooks from 0→1, and deploy production multi-tenant web products.
- Built a dockerized hosting platform on VPS, replacing managed hosting providers and cutting client hosting costs 70%.

#work(
  title: "Contract Machine Learning Engineer",
  company: "University of Toronto & LAMAS",
  location: "Toronto, CA",
  dates: dates-helper(start-date: "May 2017", end-date: "Oct 2017"),
)
- Fine-tuned PyTorch KittiSeg for feature segmentation in architectural facade-to-3D pipeline, saving 12hrs/project.
- Built a Django web app for ML job submission and auto load-balanced GPU workloads across AWS EC2 instances.

== Education

#edu(
  degree: "MS",
  program: "Electrical and Computer Engineering",
  institution: "University of Colorado Boulder",
  dates: "Expected 2027",
)

#edu(
  degree: "HBSc",
  program: "Statistics",
  institution: "University of Toronto",
  dates: "Class of 2021",
)
