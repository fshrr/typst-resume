# ML Engineer (Biotech) — base resume

Biotech/life-sciences-focused variant of the [ml-engineer](../ml-engineer/) base.
Same core ML/AI content, plus signal aimed at biotech, healthtech, and research-adjacent
companies.

## What differs from `ml-engineer`

- Adds a **Projects** section with **iGEM Toronto** (computational biology, protein
  structure, molecular visualization).
- Education lists **bio-related undergraduate coursework** (UofT HBSc Statistics).
- Surgical Safety Technologies (clinical/HIPAA) and the Freelance clinical voice-log
  app already carry healthtech signal — kept prominent.

## Variants (same content, two styles)

| File | Style template |
|------|----------------|
| `resume.typ` | `templates/active/resume-template.typ` (custom) |
| `resume-modern.typ` | `templates/active/modern-cv-template.typ` (modern-cv) |

## Use

1. Copy this folder to `resumes/<company>-<role>-<yyyy-mm>/`.
2. No path edits — imports are absolute (`/templates/...`).
3. Tailor skills/bullets to the posting, using `content/` as the source of truth.
4. Compile: `uv run python3 generate.py`, then run the resume-reviewer skill.

> Not auto-compiled by `generate.py` (any `_`-prefixed folder is skipped).
