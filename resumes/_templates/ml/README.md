# ML / Deployed Engineer — base resume

Role-generic starting point for **Machine Learning Engineer** and **Deployed Engineer**
roles. Seeded from the Cohere 2026-06 application; bullets are generic ML/AI (no
company-specific tailoring).

## Variants (same content, two styles)

| File | Style template |
|------|----------------|
| `resume.typ` | `templates/active/resume-template.typ` (custom) |
| `resume-modern.typ` | `templates/active/modern-cv-template.typ` (modern-cv) |

## Use

1. Copy this folder to `resumes/<company>-<role>-<yyyy-mm>/`.
2. No path edits needed — imports are absolute (`/templates/...`), resolved against
   the project root set by `generate.py` (`--root`).
3. Tailor skills/bullets to the job post, using `content/` as the source of truth.
4. Add `job.md` (posting + extracted signals) to the new folder.
5. Compile: `uv run python3 generate.py`, then run the resume-reviewer skill.

> Files under `resumes/_templates/` are **not** auto-compiled by `generate.py`
> (any `_`-prefixed folder is skipped). They are seeds, not deliverables.
