# Copilot to Transformation

**The complete, exam-focused study guide for Microsoft's AI business certifications — [AB-730 (AI Business Professional)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-730) and [AB-731 (AI Transformation Leader)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-731).**

Business-focused, grounded in official Microsoft Learn documentation, and built for both understanding and exam readiness — no coding required. Read it on the web, or download the EPUB/PDF.

[![Build & deploy](https://github.com/sebbrochet/aicertifications/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/sebbrochet/aicertifications/actions/workflows/build-and-deploy.yml)

- 🌐 **Read online:** <https://aicertifications.sebbrochet.com/>
- 📥 **Download (PDF & EPUB):** <https://aicertifications.sebbrochet.com/downloads/>

---

## What's inside

Two AI-focused Microsoft certifications, one coherent journey: shared foundations, then a dedicated track per exam, then exam readiness.

- **Part I — Generative AI & Responsible AI foundations** (shared): what generative AI is, how Microsoft Copilot works, prompt engineering, responsible AI.
- **Part II — AB-730 track:** the Copilot experience across Microsoft 365, prompts, conversations, agents, drafting and analyzing content, meetings and Copilot Pages.
- **Part III — AB-731 track:** the Microsoft AI portfolio, extending Copilot, Microsoft Foundry, the business case, governance, and adoption.
- **Part IV — Exam readiness:** objective checklists, high-yield facts, and a full **mock exam per certification** (40 questions each, with explained answers).
- **Annexes:** glossary, product & feature reference, objective-to-chapter map, further resources.

Every chapter follows a consistent anatomy (in 30 seconds → exam map → key concepts → how it works → real-world → exam tips → pitfalls → practice questions → further reading), with callouts and diagrams.

## Repository layout

```text
chapters/      Book content (Markdown) — the single source of truth
build/         Pandoc export chain (EPUB/PDF), cover generator, Mermaid/LaTeX config
assets/        Generated cover image
.github/       CI: build EPUB/PDF + deploy the site to GitHub Pages
mkdocs.yml     MkDocs Material configuration (web edition)
```

## Read or build locally

**Web preview (MkDocs Material):**

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m mkdocs serve
```

Then open <http://127.0.0.1:8000>.

**EPUB/PDF (Pandoc):** produced automatically by CI (see below). To build locally on a machine where Pandoc, `mermaid-cli`, and a LaTeX engine (XeLaTeX) are installed:

```powershell
.\build\make-cover.ps1        # generate assets/cover.png (Windows/GDI+)
.\build\build-pandoc.ps1      # EPUB (+ PDF if xelatex is available) -> output/
```

## How it's published

A single GitHub Actions workflow ([`.github/workflows/build-and-deploy.yml`](.github/workflows/build-and-deploy.yml)) runs on every push to `main`:

1. **validate-site** — strict `mkdocs build`.
2. **build-ebook** — Pandoc/XeLaTeX/mermaid produce the EPUB and PDF.
3. **deploy** — the freshly built files are dropped into the site and published, with the web edition, to the `gh-pages` branch.

The published site always links to the **latest** EPUB/PDF. No files are committed to `main`; there are no per-version releases.

> **GitHub setup:** Settings → Pages → Build and deployment → Source = *Deploy from a branch*, Branch = `gh-pages` / root.

## Disclaimer

This is an **independent** study guide. It is **not** affiliated with, endorsed by, or sponsored by Microsoft Corporation. Product names and logos are trademarks of their respective owners. Certification objectives evolve — AB-730 and AB-731 target the skills measured **as of July 22, 2026**; always confirm against the official study guides before you sit an exam. See [the full disclaimer](chapters/00-disclaimer.md).

## License

This work is licensed under the **[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](LICENSE)** license (CC BY-NC-SA 4.0). You may share and adapt it with attribution, for non-commercial purposes, under the same license. See [LICENSE](LICENSE) for details.

## Author

By **Sébastien Brochet**.
