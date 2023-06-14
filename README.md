[![DagsHub](https://bit.ly/33Q1Dv9)](https://dagshub.com/PythonFZ/SDR)
[![ZnTrack](https://img.shields.io/badge/Powered%20by-ZnTrack-%23007CB0)](https://zntrack.readthedocs.io/en/latest/)
[![zincware](https://img.shields.io/badge/Powered%20by-zincware-darkcyan)](https://github.com/zincware)

# Structure Database Repository

This repository contains simulation data that can be loaded via [ZnTrack](https://zntrack.readthedocs.io).
In addition to [ZnTrack](https://zntrack.readthedocs.io) an [IPSuite](https://github.com/zincware/IPSuite) installation and [DVC-S3](https://dvc.org/doc/command-reference/remote/add) support are also required.

```bash
pip install ipsuite zntrack dvc[s3]
```

The following example provides a list of [ase.Atoms](https://wiki.fysik.dtu.dk/ase/ase/atoms.html) that were generated during geometry optimization of water using [CP2K](https://www.cp2k.org/).
For more information have a look at the branch: https://github.com/IPSProjects/SDR/tree/water

```python
import zntrack
import ase

node = zntrack.from_rev("H2O-x10", remote="https://github.com/IPSProjects/SDR", rev="water")
node.atoms: list[ase.Atoms]
```
