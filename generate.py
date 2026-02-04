#!/usr/bin/env python3

import subprocess
from pathlib import Path

script_dir = Path(__file__).parent.resolve()
resumes_dir = script_dir / "resumes"
fonts_dir = script_dir / "fonts"


def main():
    for typ_file in resumes_dir.glob("*.typ"):
        output_file = typ_file.with_suffix(".pdf")
        print(f"Generating {output_file}...")
        subprocess.run(
            ["typst", "compile", str(typ_file), str(output_file), "--font-path", str(fonts_dir), "--root", str(script_dir)],
            check=True,
        )

    print("Done.")


if __name__ == "__main__":
    main()
