# Typst Resume Project

A Typst-based resume template and generator system for creating professional, styled resumes compiled to PDF.

## Project Structure

```
├── pyproject.toml           # uv project config with dependencies
├── uv.lock                  # Lockfile for reproducible installs
├── generate.py              # Python build script - compiles all .typ files to PDF
├── watch.py                 # File watcher - auto-recompiles on .typ changes
├── templates/
│   └── resume-template.typ  # Main template with reusable components
├── resumes/                 # Resume source files (.typ) and generated PDFs
├── fonts/                   # Bundled fonts (Lato, Merriweather, FontAwesome)
├── content/                 # Master content library (source of truth for all resume content)
│   ├── skills.md            # All skills with tags
│   ├── experiences/         # One file per job — all possible bullets with tags
│   └── projects/            # One file per project — all possible bullets with tags
```

## Build Process

```bash
uv run python3 generate.py   # One-time compile of all .typ files
uv run python3 watch.py      # Watch mode - auto-recompiles on changes
```

Requires the Typst CLI to be installed.

## Template Components (templates/resume-template.typ)

The template exports these functions:

- **`resume()`** - Main document wrapper with header and contact info
  - Parameters: `name`, `phone`, `email`, `linkedin`, `github`, `website`
  - Color params: `primary-color`, `accent-color`, `secondary-color`

- **`experience(title, company, location, dates)`** - Job entry with grid layout

- **`education(school, degree, program, GPA, dates, courses)`** - Education entry with optional courses list

- **`skills(category, items)`** - Skill category with items string

- **`project(name, group, dates, url)`** - Project entry with hyperlinked URL

- **`items(...children)`** - Bullet list helper

## Creating a Resume

1. Create a new `.typ` file in `resumes/`
2. Import template: `#import "../templates/resume-template.typ": *`
3. Apply wrapper: `#show: resume.with(name: "...", email: "...", ...)`
4. Add sections using `== Section Name` and template functions
5. Run `uv run python3 generate.py` to compile (or use `watch.py` for live reload)

## Dependencies

- **Typst CLI** - Document compiler (must be installed)
- **uv** - Python package manager (must be installed)
- **Python 3.13+** - For build scripts
- **watchfiles** - File watcher library (installed via uv)
- **FontAwesome 0.6.0** - Typst package for icons (auto-fetched)

## Fonts

Bundled in `fonts/`:
- **Lato** - Body text (10pt)
- **Merriweather** - Headings (24pt)
- **FontAwesome 7.1.0** - Contact icons

## Color Scheme

- Primary: `#1E314A` (dark blue) - Titles, name
- Accent: `#1D78E2` (blue) - Section headings, rules
- Secondary: `#606B87` (grey) - Metadata, dates

## Content Library

`content/` is the master source of truth for all resume content. Never fabricate bullets — all content must exist in these files or be confirmed by the user before adding.

### Tag System
Each bullet is tagged with one or more of:
- `[infra]` — systems, K8s, provisioning, networking, IaC
- `[ml]` — model work, pipelines, GPU, training/inference
- `[product]` — user-facing features, business outcomes, scale metrics
- `[api]` — service/API design and implementation
- `[leadership]` — coordination, ownership, cross-team

### Workflow: Building a Targeted Resume
1. Read the job posting to extract must-have signals
2. Read `content/skills.md` and all relevant experience/project files
3. Select bullets by tag match — prefer `[infra]` bullets for infra roles, etc.
4. Create a new `.typ` file in `resumes/` using selected bullets
5. Compile with `uv run python3 generate.py`

### Content Files
- `content/skills.md` — all known skills organized by category with tags
- `content/experiences/surgical-safety-technologies.md` — strongest infra signal; EKS, on-prem GPU cluster, Ansible, canary deploys
- `content/experiences/echoes-events.md` — AWS infra, Python batch pipeline, ML embeddings, founding/leadership
- `content/experiences/freelance.md` — RAG pipelines, MCP servers, client infra deployments
- `content/experiences/scotiabank.md` — BFF REST APIs, 10M+ users; weak for infra, strong for product/api
- `content/experiences/blueflower-media.md` — Docker/Nginx/VPS hosting; old, keep to 1 bullet
- `content/experiences/uoft-lamas.md` — GPU cluster job scheduler; old, keep to 1 bullet
- `content/projects/homelab.md` — strongest bare-metal/infra signal; K8s on Proxmox, PXE boot, ZFS/NFS, Ansible, Terraform, Tailscale, Infisical, Prometheus/Grafana

### Notes
- Each content file has a Notes section — read it before selecting bullets
- Some bullets in content files are alternative framings of the same work — pick one per resume
- Fields marked "fill in" in Notes need the user to confirm details before using

## Skills

The following skills are available for use in this project:

- `skills/resume-copywriter/SKILL.md` — Copywriting agent for resume bullets and project descriptions. Use when the user asks to write, edit, or improve resume content.
