#!/usr/bin/env python3

import re
import subprocess
from pathlib import Path

script_dir = Path(__file__).parent.resolve()
resumes_dir = script_dir / "resumes"
fonts_dir = script_dir / "fonts"


def author_name() -> str:
    profile = script_dir / "profile.typ"
    m = re.search(r'#let name = "([^"]+)"', profile.read_text())
    return m.group(1).replace(" ", "_") if m else "resume"


def compile_file(typ_file: Path, author: str):
    folder = typ_file.parent.name
    output_file = typ_file.parent / f"{author}_resume_{folder}.pdf"
    print(f"Compiling {typ_file.relative_to(script_dir)} -> {output_file.name}...", end=" ")
    subprocess.run(
        ["typst", "compile", str(typ_file), str(output_file), "--font-path", str(fonts_dir), "--root", str(script_dir)],
        check=True,
    )
    print("done")


def compile_all():
    author = author_name()
    for typ_file in sorted(
        p
        for p in resumes_dir.glob("**/source.typ")
        if "_archive" not in p.relative_to(resumes_dir).parts
    ):
        compile_file(typ_file, author)


def main():
    compile_all()
    print("Done.")


if __name__ == "__main__":
    main()
