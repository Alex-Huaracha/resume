# Resume — Alex Huaracha

My resume, written in LaTeX and versioned with Git. The PDF is built
automatically by GitHub Actions on every push, so the source of truth is
always the `.tex` file and the compiled output stays in sync.

## Structure

- `_preamble.tex` — shared formatting, packages and custom commands.
- `resume-es.tex` — Spanish content (`\input`s the preamble).
- `resume-en.tex` — English content (`\input`s the preamble).

Formatting lives in one place (`_preamble.tex`); each language file holds
only its content. Change a margin once, both PDFs update.

Based on [Jake Gutierrez's template](https://github.com/sb2nov/resume) (MIT).

## Building locally

Builds both `resume-es.pdf` and `resume-en.pdf` inside a container (Docker or
Podman), so you don't need TeX Live installed on your machine and don't need
to push to `main` just to see a compiled PDF:

```bash
./build.sh
```

The first run builds the image (downloads TeX Live packages); subsequent
runs reuse it and just recompile.

## Continuous build

Every push to `main` triggers a GitHub Actions workflow that compiles both
`resume-es.tex` and `resume-en.tex` and publishes `resume-es.pdf` and
`resume-en.pdf` as assets of a GitHub Release, giving each a stable URL:

```
https://github.com/Alex-Huaracha/resume/releases/latest/download/resume-en.pdf
```

## License

MIT — template originally by Jake Gutierrez, based on
[sb2nov/resume](https://github.com/sb2nov/resume).
