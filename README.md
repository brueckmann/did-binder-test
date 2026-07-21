# Example of a Difference-in-differences project

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/brueckmann/did-binder-test/HEAD)

## Directory Structure
Below is an overview of the repository layout:

```
├── .binder/                    # Binder configuration files
│   ├── install.R              # R packages to install
│   ├── postBuild              # Post-build script
│   └── runtime.txt            # R version specification
├── 01_data/                    # All project data
│   └── README.md              # Data sources, descriptions, processing steps
├── 02_rscripts/                # Analysis scripts and utilities
│   ├── 00_get_data.R          # Data download script (R)
│   ├── 01_data_cleaning.R     # Data input and preparation script (R)
│   ├── 02_descriptives.R      # Descriptive results (R)
│   ├── 03_modeling.R          # Diff-in-diff modeling script (R)
│   ├── 98_write_sessioninfo.R # Write R session information
│   ├── install.R              # R package dependencies
│   └── README.md              # Analysis workflow and script purposes
├── 03_output/                  # Quarto output drafts, figures, documents
│   ├── BasicDiffinDiffs.qmd    # Basic diff-in-diffs analysis document
│   ├── Comparison.qmd          # Comparison analysis document
│   ├── references.yaml         # Bibliography references
│   └── README.md               # Output documentation
├── diff_in_diffs.Rproj         # The R project (open it using RStudio)
├── github_info.qmd             # Explains the very basics of Git and Github usage
├── run-it-all-in-mybinders-Rstudio.R  # Script to run all analyses
├── run.sh                       # Shell script to run all analyses
└── README.md                   # Project overview and setup instructions (this file)
```

# Acknowledgements: 

Research Project Template stems from [LMU OSC](https://github.com/lmu-osc/research-project-template). 
