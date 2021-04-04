

## Loading data

To read all data for an AMON, say `ni1/AG7_00001.json`, do this

```python
import json
with open('ni1/AZ7_00001.json') as fid:
    dt = json.load(fid)
```

To recover the cartesian coordinates of atoms (`coords`)
```python
coords = dt['coords'].reshape( (-1,3) )
```

Similarly, to get the reduced normal coordinates (`rnc`)

```python
rn = dt['rn']
na = dt['na'] # total number of atoms
rnc = rn.reshape( (-1,na,3) )
```

Bond order matrix is also available, and can be obtained through
```python
bo = dt['bo'].reshape((na,na))
```


## Notes

| Label            | Property                                       | Note              |
|------------------|------------------------------------------------|-------------------|
| id               | molecular identity                             | e.g., AZ7_00001   |
| zs               | a list of nuclear charges                      |                   |
| symbols          | atomic symbols                                 |                   |
| coords           | atomic coordinates                             | in Angstrom (Ang) |
| smi              | canonical SMILES string (or `can`)             | OEChem format     |
| na               | number of total atoms                          |                   |
| ni               | number of heavy atoms                          |                   |
| ne/ne_up/ne_down | number of total, spin up & down electrons      |                   |
| r2               | electronic spatial extent                      | in Bohr^2         |
| et               | B3LYP/cc-pVTZ total energy                     | in Hartree        |
| e_ne             | nuclei-electron interaction energy             | in Hartree        |
| e_k              | kinetic energy                                 | in Hartree        |
| e_nn             | nuclear repulsion energy                       | in Hartree        |
| e_disp           | D3 dispersion energy (`xc=b3lyp`)              | in Hartree        |
| mu               | dipole moment                                  | in Debye          |
| mu_{a}           | dipole components, `a={x,y,z}`                 | in Debye          |
| mu_{ab}          | quadrupole moment components, `b={x,y,z}`      | in Debye-Ang      |
| mu_{abc}         | Octapole moment components, `c={x,y,z}`        | in Debye-Ang^2    |
| mu_{abcd}        | Hexadecapole moment components, `d={x,y,z}`    | in Debye-Ang^3    |
| qa               | Mulliken atomic charge                         |                   |
| homo             | Highest occupied molecular orbital (MO) energy | in Hartree        |
| lumo             | Lowest unoccupied MO energy                    | in Hartree        |
| gap              | gap between HOMO and LUMO                      | in Hartree        |
| eigs             | MO energies                                    | in Hartree        |
| omega            | harmonic frequencies                           | in cm^{-1}        |
| omega0           | highest harmonic frequency                     | in cm^{-1}        |
! ma               | atomic masses                                  | in Dalton         |
| fc               | force constants                                | in mDyne/Ang      |
| mr               | reduce masses                                  | Dalton            |
| ir               | IR intensity                                   | in km/mol         |
| rn               | reduced normal coordinates                     | within [0,1]      |
| A,B,C            | rotational constants                           | in GHz            |
| alpha            | isotropic polarizability                       | in Bohr^3         |
| alpha_{ab}       | polarizability components                      | in Bohr^3         |
! P                | pressure                                       | in atm            |
! T                | temperature                                    | in Kelvin (K)     |
| zpe              | zero point energy                              | in Hartree        |
| U0               | internal energy at 0 K                         | in Hartree        |
| U                | internal energy at 298.15 K                    | in Hartree        |
| H                | enthalpy at 298.15 K                           | in Hartree        |
| G                | free energy at 298.15 K                        | in Hartree        |
| S                | entropy at 298.15 K                            | in Hartree/K      |
| Cv               | heat capacity at 298.15 K                      | in Hartree/K      |


