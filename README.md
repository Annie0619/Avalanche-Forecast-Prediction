# Reproduce this Quarto report

## Prereqs
- Install either **mamba** (recommended) or **conda**.
  - If you have conda only, replace `mamba` with `conda` in the commands below.
- No need to install R or Quarto system-wide; both are inside the environment.

Run this in your shell before doing anything with the qmd. 

## 1) Create & activate the environment
```bash
conda env create -f environment.yml
conda activate ds4i-mixed
open -a RStudio .
```

##2) If have updated the environment file with new packages, run this command to update the build with them

```bash
conda env update -f environment.yml --prune
```