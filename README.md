ALLCHR011.qmd will create a virtual environment automatically in the first chunk that will satisfy dependencies. 
However, if you wish to do it from command line, first have conda (or mamba) installed. 

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

Please email us if there are any issues! 