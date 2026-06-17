# Resume — Alex Huaracha

My resume, written in LaTeX and versioned with Git. The PDF is built
automatically by GitHub Actions on every push, so the source of truth is
always the `.tex` file and the compiled output stays in sync.

## Structure

- `main.tex` — the resume source (based on [Jake Gutierrez's template](https://github.com/sb2nov/resume), MIT).

## Building locally

You need a LaTeX distribution (TeX Live, MiKTeX) with `pdflatex`:

```bash
pdflatex main.tex
```

This produces `main.pdf`.

## Continuous build

Every push to `main` triggers a GitHub Actions workflow that compiles
`main.tex` and publishes the resulting `main.pdf` as a build artifact.

## License

MIT — template originally by Jake Gutierrez, based on
[sb2nov/resume](https://github.com/sb2nov/resume).
