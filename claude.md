# Typst Resume Project

A Typst-based resume template and generator system for creating professional, styled resumes compiled to PDF.

## Project Structure

```
├── pyproject.toml           # uv project config with dependencies
├── uv.lock                  # Lockfile for reproducible installs
├── profile.typ              # Personal info (name, email, phone, etc.) — imported by every resume
├── generate.py              # Python build script - compiles all source.typ files to PDF
├── watch.py                 # File watcher - auto-recompiles on .typ changes
├── templates/
│   └── active/              # Style/layout templates (imported by every resume)
│       ├── resume-template.typ     # Custom template with reusable components
│       └── modern-cv-template.typ  # modern-cv style variant
├── resumes/                 # Resume source files and generated PDFs
│   ├── _templates/          # Base role templates (starter resumes) — copy & customize
│   │   ├── ml/              # ML / AI Engineer base
│   │   ├── ml_bio/          # ML Engineer, biotech focus
│   │   └── fde/             # Forward Deployed Engineer base (modern-cv style)
│   ├── _archive/            # Old resumes (not compiled)
│   └── <company>_<role>_<date>/  # One folder per targeted application (lowercase, underscores)
│       ├── source.typ       # Resume source (edit this)
│       └── Firstname_Lastname_resume_<folder>.pdf  # Generated output
├── fonts/                   # Bundled fonts (Lato, Poppins, tabler-icons)
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

## Template Components (templates/active/resume-template.typ)

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

Start from a base role template instead of a blank file:

1. Copy a base from `resumes/_templates/<role>/` to `resumes/<company>_<role>_<yyyy_mm>/`
2. Tailor skills/bullets to the job post (use `content/` as the source of truth)
3. Run `uv run python3 generate.py` to compile (or use `watch.py` for live reload)

Each resume folder contains one `source.typ` file. The generated PDF is named
`Firstname_Lastname_resume_<foldername>.pdf` — name comes from `profile.typ`.

`profile.typ` at project root holds all personal info (name, phone, email, linkedin, github, website).
Import it in `source.typ` with `#import "/profile.typ": name, phone, email, linkedin, github, website`.

Both templates use `name:` (not `author:`). `linkedin` and `github` take handles only (not full URLs).

All imports use absolute paths (`#import "/templates/active/resume-template.typ": *`),
resolved against the project root via `--root`, so folder depth doesn't matter.

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
2. Copy the closest base role template from `resumes/_templates/<role>/` to a new folder `resumes/<company>-<role>-<yyyy-mm>/`, and add `job.md` (posting + signals)
3. Read `content/skills.md` and all relevant experience/project files
4. Select bullets by tag match — prefer `[infra]` bullets for infra roles, etc. — and swap them into the copied resume
5. Compile with `uv run python3 generate.py`
6. Run the resume-reviewer skill against the compiled PDF and iterate until all rules pass

### Content Files
- `content/skills.md` — all known skills organized by category with tags
- `content/experiences/surgical-safety-technologies.md` — strongest infra signal; EKS, on-prem GPU cluster, Ansible, canary deploys
- `content/experiences/echoes-events.md` — AWS infra, Python batch pipeline, ML embeddings, founding/leadership
- `content/experiences/freelance.md` — RAG pipelines, MCP servers, client infra deployments
- `content/experiences/scotiabank.md` — BFF REST APIs, 10M+ users; weak for infra, strong for product/api
- `content/experiences/blueflower-media.md` — Docker/Nginx/VPS hosting; old, keep to 1 bullet
- `content/experiences/uoft-lamas.md` — GPU cluster job scheduler; old, keep to 1 bullet
- `content/projects/homelab.md` — strongest bare-metal/infra signal; K8s on Proxmox, PXE boot, ZFS/NFS, Ansible, Terraform, Tailscale, Infisical, Prometheus/Grafana
- `content/projects/igem-toronto.md` — iOS app + wiki/D3; very old, biotech/research-adjacent roles only

### Notes
- Each content file has a Notes section — read it before selecting bullets
- Some bullets in content files are alternative framings of the same work — pick one per resume
- Fields marked "fill in" in Notes need the user to confirm details before using

## Skills

The following skills are available for use in this project:

- `skills/resume-copywriter/SKILL.md` — Copywriting agent for resume bullets and project descriptions. Use when the user asks to write, edit, or improve resume content.
- `skills/resume-reviewer/SKILL.md` — Post-compile PDF layout reviewer. Run after every generate.py compile to check: single page, no orphan skill wraps, no single-bullet experiences, project format consistency, no line waste, page utilization.
