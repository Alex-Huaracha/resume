# Resume — Alex Huaracha

My resume, written in LaTeX and versioned with Git. The compiled PDFs are
build artifacts, not committed — the source of truth is always the `.tex`
files.

## Structure

- `_preamble.tex` — shared formatting, packages and custom commands.
- `resume-es.tex` — Spanish content (`\input`s the preamble).
- `resume-en.tex` — English content (`\input`s the preamble).

Formatting lives in one place (`_preamble.tex`); each language file holds
only its content. Change a margin once, both PDFs update.

Based on [Jake Gutierrez's template](https://github.com/sb2nov/resume) (MIT).

## Building locally

Builds both `resume-es.pdf` and `resume-en.pdf` inside a container (Docker or
Podman), so you don't need TeX Live installed on your machine:

```bash
./build.sh
```

The first run builds the image (downloads TeX Live packages); subsequent
runs reuse it and just recompile.

## License

MIT — template originally by Jake Gutierrez, based on
[sb2nov/resume](https://github.com/sb2nov/resume).
