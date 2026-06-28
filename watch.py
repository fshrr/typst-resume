#!/usr/bin/env python3

from pathlib import Path

from watchfiles import watch, DefaultFilter

from generate import compile_all, compile_file, resumes_dir, author_name


class TypFilter(DefaultFilter):
    allowed_extensions = (".typ",)

    def __call__(self, change, path):
        return super().__call__(change, path) and path.endswith(self.allowed_extensions)


def main():
    print("Initial compilation...")
    compile_all()
    print()

    author = author_name()

    print(f"Watching {resumes_dir} for changes...")
    print("Press Ctrl+C to stop.\n")

    try:
        for changes in watch(resumes_dir, watch_filter=TypFilter()):
            for _, path in changes:
                try:
                    compile_file(Path(path), author)
                except Exception as e:
                    print(f"failed: {e}")
    except KeyboardInterrupt:
        print("\nStopped.")


if __name__ == "__main__":
    main()
