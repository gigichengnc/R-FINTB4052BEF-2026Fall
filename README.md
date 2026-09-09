# R-FINTB4052BEF-2026Fall

R workspace for **FINTB4052BEF — Autumn 2026**.

## Repository structure

```text
.
├── R/
│   └── analysis.R
├── data/
│   └── .gitkeep
├── output/
│   └── .gitkeep
└── .github/
    └── workflows/
        └── run-r.yml
```

## How it works

1. Put course data files in `data/`.
2. Write or update R analysis in `R/analysis.R`.
3. Push the changes to GitHub, or manually run the workflow from **Actions → Run R analysis → Run workflow**.
4. GitHub Actions runs the R script automatically.
5. Download the generated graphs/tables from the workflow run under **Artifacts → R-results**.

## Output

The starter analysis creates:

- `output/pipeline_test.png` — a test graph proving that graphical R output works.
- `output/mtcars_summary.csv` — a test numerical output.

These are starter outputs only and can be replaced with FINTB4052BEF coursework analyses.

## Running locally

```bash
Rscript R/analysis.R
```

## Graph workflow

```text
R script
   ↓
output/*.png / *.pdf / *.csv
   ↓
GitHub Actions
   ↓
R-results artifact
   ↓
Download from GitHub
```
