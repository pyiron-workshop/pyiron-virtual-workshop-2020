# pyiron virtual workshop 2020: Workflows for atomistic simulations

Tutorials, exercises, and solutions for the pyiron workshop 2020.

## Getting started

For this workshop, you will need to have pyiron installed on your workstation. While 
pyiron is platform independent, Linux is required to run certain external 
simulation codes. For windows users, it is recommended that you install the linux 
subsystem for windows. More details [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
If you are a Mac user, you will only be able to run LAMMPS examples (which is still fine!)

### Installing conda

While pyiron can be installed in several ways, installation via conda is recommended. As a first step, follow [this guide](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html
) to install miniconda (recommended) or anaconda.

#### Creating a new conda environment

It is recommended to create a new conda environment to install the required packages for the workshop

`conda create --name pyiron_workshop python=3.7`

To activate this conda environment, type

`source activate pyiron_workshop`

After the workshop is over, this environment can be deactivated `source deactivate pyiron_workshop`.

### Installing pyiron and other packages using conda-forge

Once you've activated the `pyiron_workshop` environment, install the necessary packages using

`conda install -y -c conda-forge git pyiron nglview lammps sphinxdft=2.6.1=h6ced99e_5 nodejs jupyterlab`

Further, to get nglview working smoothly on jupyter notebooks, the following commands need to be typed

```
jupyter nbextension install nglview --py --sys-prefix
jupyter nbextension enable nglview --py --sys-prefix
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install nglview-js-widgets
```


