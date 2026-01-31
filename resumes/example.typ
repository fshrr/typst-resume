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

#skills(category: "Languages", items: "JavaScript, TypeScript, Python, Go, Bash, SQL, HTML/CSS")
#skills(category: "Frontend and Backend Libraries", items: "Node.js, Django, FastAPI, React, Next.js, TanStack, D3.js, Nginx, Jest")
#skills(category: "ML Libraries", items: "Numpy, Pandas, PyTorch, Langchain, LlamaIndex, Ollama, Google ADK, Scikit-image, Scikit-learn")
#skills(category: "Infrastructure", items: "Linux, AWS, GCP, Docker, Kubernetes, Ansible, PostgreSQL, DynamoDB, ElasticSearch, Redis")
#skills(category: "Tools", items: "Claude Code, Cursor, Git, Vite")

== Experience

#experience(
  title: "Technical Cofounder",
  company: "Echoes Events",
  location: "Toronto, CA",
  dates: "December 2024 — Present",
)
#items(
  [Cofounded a wellness startup applying lean methodology through 3 product iterations with 100+ market research interviews, transforming Echoes from wellness edtech into a Eventbrite alternative for spiritual events and retreats.],
  [Built a Python microservice for LLM-assisted scraping across 400+ websites and public groups, generating keyword tags for event aggregation and recommendations with 95% accuracy.],
  [Developed and deployed TanStack Start full-stack platform on GCP powering event discovery, event posting, LLM chatbot, host profiles, buddy matching, recommendations, and seamless booking flows.],
)

#experience(
  title: "Freelance Technical Consultant",
  company: "",
  location: "Toronto, CA",
  dates: "January 2023 — Present",
)
#items(
  [Engineered conversational chatbots for clients using LangChain, Google ADK, and foundational models (Gemini/GPT), implementing advanced prompt engineering for multi-level context-aware dialogue management.],
  [Built RAG pipelines ingesting internal client data via LlamaIndex embeddings into PostgreSQL (pgvector), developing custom MCP servers to connect chatbots with these personalized knowledge bases.],
)

#experience(
  title: "Full Stack Software Developer",
  company: "Scotiabank",
  location: "Toronto, CA",
  dates: "Jun 2022 — Jan 2023",
)
#items(
  [Developed and maintained over 30 Backend for Frontend REST APIs in Next.js for e-transfer functionalities, serving over 10 million users, as part of Scotiabank's Web Modernization project.],
  [Proposed and led the development of a shared React.js UI library for the monorepo incorporating over 20 components, leading to a 5% code reduction in the repo and a 40% decrease in recurring bugs in multiple teams.],
)

#experience(
  title: "Full Stack ML Software Developer",
  company: "Surgical Safety Technologies",
  location: "Toronto, CA",
  dates: "Mar 2021 — Apr 2022",
)
#items(
  [Architected key features on a distributed video processing and AI analysis pipeline on AWS that handled over 200 hours of daily video uploads, transcoding, and AI analysis for 5 major US and Canadian hospitals.],
  [Increased the average user task completion rate by 400% through the development of 3 crucial dashboard UIs (admin, user and peer assessment dashboard) using React.js and D3.js],
  [Reduced user-reported bugs by 40% and cut system downtime by 100%, by proposing and integrating feature flags for canary testing the deployment of new features.],
)

#experience(
  title: "Full Stack Software Developer",
  company: "BlueFlower Media",
  location: "Toronto, CA",
  dates: "Sep 2017 — Dec 2019",
)
#items(
  [Bootstrapped a digital media startup, leading a cross-functional team of 4 developers and 2 designers to deliver comprehensive digital solutions for over 20 small businesses, using Node.js, React.js and Wordpress.],
  [Designed and deployed a containerized load balanced web hosting infrastructure for low-traffic sites using Kubernetes and Nginx reverse proxy, reducing hosting costs by up to 70%.],
)

#experience(
  title: "Contract Machine Learning Engineer",
  company: "University of Toronto & LAMAS",
  location: "Toronto, CA",
  dates: "May 2017 — Oct 2017",
)
#items(
  [Built an ML pipeline to transform 2D building models into 3D using a retrained convolutional neural network in PyTorch and Scikit-image for precise vectorization, reducing manual labeling by 12 hours per project.],
  [Developed a Django application with a job scheduler that load balanced AWS GPU EC2 instances to manage over 50 Neural Style Transfer job requests per hour in workshops.],
)

== Projects
#project(
	name: "test project",
	group: "group name",
	url: "github.com",
	dates: "May 2017 — Oct 2017",
)
#items(
  [Built an ML pipeline to transform 2D building models into 3D using a retrained convolutional neural network in PyTorch and Scikit-image for precise vectorization, reducing manual labeling by 12 hours per project.],
  [Developed a Django application with a job scheduler that load balanced AWS GPU EC2 instances to manage over 50 Neural Style Transfer job requests per hour in workshops.],
)

#project(
	name: "Test project",
	dates: "May 2017 — Oct 2017",
)
#items(
  [Built an ML pipeline to transform 2D building models into 3D using a retrained convolutional neural network in PyTorch and Scikit-image for precise vectorization, reducing manual labeling by 12 hours per project.],
  [Developed a Django application with a job scheduler that load balanced AWS GPU EC2 instances to manage over 50 Neural Style Transfer job requests per hour in workshops.],
)

#project(
	name: "Test project",
	group: "group name",
	dates: "May 2017 — Oct 2017",
)
#items(
  [Built an ML pipeline to transform 2D building models into 3D using a retrained convolutional neural network in PyTorch and Scikit-image for precise vectorization, reducing manual labeling by 12 hours per project.],
  [Developed a Django application with a job scheduler that load balanced AWS GPU EC2 instances to manage over 50 Neural Style Transfer job requests per hour in workshops.],
)


== Education

#education(
  degree: "Honours Bachelor of Science",
  program: "Statistics",
  school: "University of Toronto",
  dates: "Class of 2021",
  courses: ("Data Science", "Computer Science", "Machine Learning"),
  gpa: "9001/9000"
)

#education(
  degree: "Honours Bachelor of Science",
  program: "Statistics",
  school: "University of Toronto",
  dates: "Class of 2021",
  courses: ("Data Science", "Computer Science", "Machine Learning")
)
