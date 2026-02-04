# Typst Resume

## Install Typst

Follow the installation instructions at https://github.com/typst/typst#installation

## Install uv

Follow the installation instructions at https://docs.astral.sh/uv/getting-started/installation/

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/fshrr/typst-resume.git
   cd typst-resume
   ```

2. Add your resume `.typ` file in the `resumes/` folder (use `example.typ` as a reference)

3. Generate PDFs:
   ```bash
   uv run python3 generate.py
   ```

4. Or use watch mode for live recompilation:
   ```bash
   uv run python3 watch.py
   ```
