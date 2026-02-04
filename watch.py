#!/usr/bin/env python3

import subprocess
from pathlib import Path

from watchfiles import watch, DefaultFilter


class TypFilter(DefaultFilter):
    """Filter to only watch .typ files."""

    allowed_extensions = (".typ",)

    def __call__(self, change, path):
        return super().__call__(change, path) and path.endswith(self.allowed_extensions)


script_dir = Path(__file__).parent.resolve()
resumes_dir = script_dir / "resumes"
fonts_dir = script_dir / "fonts"


def compile_file(typ_file: Path) -> bool:
    """Compile a single .typ file to PDF. Returns True on success."""
    output_file = typ_file.with_suffix(".pdf")
    print(f"Compiling {typ_file.name}...", end=" ")
    try:
        subprocess.run(
            [
                "typst",
                "compile",
                str(typ_file),
                str(output_file),
                "--font-path",
                str(fonts_dir),
                "--root",
                str(script_dir),
            ],
            check=True,
            capture_output=True,
            text=True,
        )
        print("done")
        return True
    except subprocess.CalledProcessError as e:
        print("failed")
        if e.stderr:
            print(e.stderr)
        return False


def compile_all():
    """Compile all .typ files in the resumes directory."""
    print("Initial compilation...")
    for typ_file in resumes_dir.glob("*.typ"):
        compile_file(typ_file)
    print()


def main():
    compile_all()

    print(f"Watching {resumes_dir} for changes...")
    print("Press Ctrl+C to stop.\n")

    try:
        for changes in watch(resumes_dir, watch_filter=TypFilter()):
            for change_type, path in changes:
                compile_file(Path(path))
    except KeyboardInterrupt:
        print("\nStopped.")


if __name__ == "__main__":
    main()
