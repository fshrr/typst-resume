# Typst Resume Project

A Typst-based resume template and generator system for creating professional, styled resumes compiled to PDF.

## Project Structure

```
├── pyproject.toml           # uv project config with dependencies
├── uv.lock                  # Lockfile for reproducible installs
├── generate.py              # Python build script - compiles all .typ files to PDF
├── watch.py                 # File watcher - auto-recompiles on .typ changes
├── src/
│   └── resume-template.typ  # Main template with reusable components
├── resumes/                 # Resume source files (.typ) and generated PDFs
├── fonts/                   # Bundled fonts (Lato, Merriweather, FontAwesome)
```

## Build Process

```bash
uv run python3 generate.py   # One-time compile of all .typ files
uv run python3 watch.py      # Watch mode - auto-recompiles on changes
```

Requires the Typst CLI to be installed.

## Template Components (src/resume-template.typ)

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
2. Import template: `#import "../src/resume-template.typ": *`
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
