# Typst Resume Project

A Typst-based resume template and generator system for creating professional, styled resumes compiled to PDF.

## Project Structure

```
├── generate.py              # Python build script - compiles all .typ files to PDF
├── src/
│   └── resume-template.typ  # Main template with reusable components
├── resumes/                 # Resume source files (.typ) and generated PDFs
├── fonts/                   # Bundled fonts (Lato, Merriweather, FontAwesome)
```

## Build Process

Run `python3 generate.py` to compile all `.typ` files in `resumes/` to PDF. Requires the Typst CLI to be installed.

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
5. Run `python3 generate.py` to compile

## Dependencies

- **Typst CLI** - Document compiler (must be installed)
- **Python 3** - For build script
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
