# CRRESS Outcomes Report

This directory contains the source files and build scripts for the Conference on Reproducibility and Replicability in Economics and Social Sciences (CRRESS) Final Outcomes Report.

## Prerequisites

### Required Software

- **R**: Version 4.5.1 or compatible
- **Quarto**: Version 1.6.40 or compatible
- **renv**: For R package management (version 1.1.4)

### Required Data

- **Zoom directory**: Must be present in the project root with subdirectories:
  - `Attendance/`
  - `Registration/`
  - These data are confidential.
- **Youtube** directory

## Building the Report

### Automated Build

Run the build script to render the report and create an archive:

```bash
./build_report.sh
```

This script will:
1. Check that the `Zoom` directory exists
2. Verify Quarto is installed
3. Render the Quarto document to HTML
4. Create a tarball archive `../crress-outcomes-report.tgz` containing the `_html` output directory

### Manual Build

If you prefer to render manually:

```bash
quarto render crress-outcomes-report.qmd
```

## Project Structure

- **Main document**: [`crress-outcomes-report.qmd`](crress-outcomes-report.qmd)
- **Configuration**: [`_quarto.yml`](_quarto.yml)
- **Build script**: [`build_report.sh`](build_report.sh)
- **Bibliography files**:
  - `references.bib`
  - `CRRESS.bib`
  - `CRRESS-report.bib`
- **Citation style**: `chicago-author-date.csl`
- **Assets**:
  - Cornell branding: `cornell_seal_simple_black.png`
  - `favicon.ico`
- **Data**: `data/` directory (created automatically if needed)

## R Environment

This project uses `renv` for reproducible R package management. The exact package versions are locked in [`renv.lock`](renv.lock).

### Restoring the R Environment

To restore the exact R package environment:

```R
renv::restore()
```

## Output

The rendered report is output to the `_html` directory as configured in [`_quarto.yml`](_quarto.yml). The report can be rendered in both HTML and PDF formats.

## Current Software Versions

As of 2025-10-30 14:52:20 EDT:

- **R**: 4.5.1
- **Quarto**: 1.6.40
- **renv**: 1.1.4

## R Package Manifest

The project uses 57 R packages. Key packages include:

- askpass 1.2.1 (CRAN)
- base64enc 0.1-3 (CRAN)
- bit 4.6.0 (CRAN)
- bit64 4.6.0-1 (CRAN)
- bslib 0.9.0 (RSPM)
- cachem 1.1.0 (CRAN)
- cli 3.6.5 (CRAN)
- clipr 0.8.0 (CRAN)
- cpp11 0.5.2 (CRAN)
- crayon 1.5.3 (CRAN)
- curl 6.4.0 (CRAN)
- digest 0.6.27 (CRAN)
- dplyr 1.1.4 (CRAN)
- evaluate 1.0.4 (CRAN)
- fastmap 1.2.0 (CRAN)
- fontawesome 0.5.3 (RSPM)
- fs 1.6.6 (CRAN)
- generics 0.1.4 (CRAN)
- glue 1.8.0 (CRAN)
- here 1.0.2 (CRAN)
- highr 0.11 (RSPM)
- hms 1.1.3 (CRAN)
- htmltools 0.5.8.1 (RSPM)
- httr 1.4.7 (CRAN)
- jquerylib 0.1.4 (RSPM)
- jsonlite 2.0.0 (CRAN)
- knitr 1.50 (CRAN)
- lifecycle 1.0.4 (CRAN)
- magrittr 2.0.3 (CRAN)
- memoise 2.0.1 (CRAN)
- mime 0.13 (CRAN)
- openssl 2.3.3 (CRAN)
- pillar 1.10.2 (CRAN)
- pkgconfig 2.0.3 (CRAN)
- prettyunits 1.2.0 (CRAN)
- progress 1.2.3 (CRAN)
- R6 2.6.1 (CRAN)
- rappdirs 0.3.3 (CRAN)
- readr 2.1.5 (CRAN)
- renv 1.1.4 (CRAN)
- rlang 1.1.6 (CRAN)
- rmarkdown 2.30 (CRAN)
- rprojroot 2.1.1 (CRAN)
- sass 0.4.10 (CRAN)
- stringi 1.8.7 (CRAN)
- stringr 1.5.2 (CRAN)
- sys 3.4.3 (CRAN)
- tibble 3.3.0 (CRAN)
- tidyselect 1.2.1 (CRAN)
- tinytex 0.57 (CRAN)
- tzdb 0.5.0 (CRAN)
- utf8 1.2.6 (CRAN)
- vctrs 0.6.5 (CRAN)
- vroom 1.6.5 (CRAN)
- withr 3.0.2 (CRAN)
- xfun 0.52 (CRAN)
- yaml 2.3.10 (RSPM)

For the complete and definitive package manifest with exact versions and dependencies, see [`renv.lock`](renv.lock).

## Authors

- Aleksandr Michuda (Swarthmore College)
- Lars Vilhuber (Cornell University)

## Funding

This report is for NSF Award #2217493.

## Links

- [Main Website](https://labordynamicsinstitute.github.io/crress/)
- [YouTube Playlist](https://www.youtube.com/watch?v=-dc4xxCIeqQ&list=PLdcNmwWYeA7XY35YV9zV8zPTbE7twjz4S)
- [Harvard Data Science Review](https://hdsr.mitpress.mit.edu/reinforcing-rr)
- [Archives@Cornell](https://hdl.handle.net/1813/113399)
- [Archives@Zenodo](https://doi.org/10.5281/zenodo.17477769)
- [GitHub Repository](https://github.com/labordynamicsinstitute/crress/)
