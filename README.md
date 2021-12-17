# SynthBench: benchmarking algorithms for synthetic data generation

This repo hosts code that I used for the final project of CSCI2390.

## How to use this repo

The code was tested under Python 3.9 (3.8 should work as well). To run the Jupyter notebooks under `notebook`, first create a virtual environment, and then install all dependencies with:

```bash
pip install -r requirements.txt
```

## Run the notebooks

The code in `001 IRSSynthesizer.ipynb` uses `joblib` to run certain tests concurrently. Please modify the `n_cores` variable in the second cell to the number of cores of the machine running these notebooks. After that, the code in the `notebooks` directory should run without modifications.

Please note that the code in `002 PATE-GAN.ipynb` only demonstrates one example of a training session that diverges. I have created many copies of this notebook to test all combinations of hyperparameters described in the final report. These notebooks are not included in this repo, since they are all very similar to the one included.