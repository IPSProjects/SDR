# Structure Database Repository

This repository contains simulation data that can be loaded via [ZnTrack](https://zntrack.readthedocs.io)

```python
import zntrack
import ase

node = zntrack.from_rev("H2O-x10", remote="https://github.com/IPSProjects/SDR", rev="water")
node.atoms: list[ase.Atoms]
```