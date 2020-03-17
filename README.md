# agz7 dataset 
Complete enumerations of amons with up to 7 heavy atoms for GDB7 and ZINC

For how-to on amons generation, go to https://github.com/binghuang2018/aqml

# Features
- A wide coverage of organic chemistry, including H, C, N, O, F, S, Cl, Br, I, Sn
- can be used as a training set in QML for quantum chemistry problems related to organic molecules
  - quantum properties prediction
  - geometry optimization
  - molecular dynamics 
  - ...

# Notes on files/folders 
- `ni5` indicates the subset of all amons containing **__only__** 5 heavy atoms
- all files are of `SDF` format
- all filenames are of format `frag_[[ID]]_optg.sdf`, with `ID` being a unique identity assigned to the associated molecular graph


# Notes on geometries
- Each amon is accompanied with only one conformer
- Each conformer corresponds to the lowest energy configuration, among all other local minimas.
- The lowest energy conformers were determined through force-field (MMFF94)
- Reported final geometry (see sdf files) were calculated at the level of theory DF-B3LYP by Molpro
  - default geometry convergence thresholds were used
  - basis: cc-pVTZ-PP for Sn/I, cc-pVTZ for all others
  - df basis: def2-QZVPP/jkfit for Sn/I, cc-pVQZ/jkfit for all others
  
