# agz7 dataset 
Complete enumerations of amons with up to 7 heavy atoms for GDB17 and ZINC

For how-to on amons generation, go to https://github.com/binghuang2018/aqml

# Features
- A wide coverage of organic chemistry, including H, B, C, N, O, F, Si, S, P, Cl, Br, I, Sn
- AGZ7 could be easily extended by inclusion of more accurate properties and/or all conformers, thanks to the small molecular size of AMON (no more than 7
non-hydrogen atoms)
- AGZ7 can be used as a dictionary for the look-up of the most pertinent amons for a query, or the whole as a single training set for QML models (in particular deep neural network) for quantum chemistry problems involving organic molecules
  - quantum properties prediction
  - geometry optimization
  - molecular dynamics 
  - ...

# Notes on files/folders 
- Files containing SMILES string (canonicalized by OEChem)
  - `gdb9/gdb9.can`: The complete list of SMILES strings of GDB9 amons (may overlap with the other files end with `.can`)
  - `gdb17-zinc-comm.can`: SMILES strings of amons that are shared by gdb17 & zinc
  - `gdb17.can`: SMILES strings of amons that are unique to gdb17
  - `zinc.can`: SMILES strings of amons that are unique to ZINC
- Folders containing 3d geometries of amons
  - `gdb9/` includes all amons of gdb9 dataset.
  - `gdb17/` covers the complete set of gdb17 amons (i.e., `gdb17-zinc-comm.can`+`gdb17.can`) that survived geometry relaxation. 
  - `zinc/` covers only a subset of SMILES strings in `zinc.can`, that is, amons that are unique to gdb17 and survived geometry relaxation.
- Compressed tar files
  - Files in say, `ni5.tar.gz` indicates the subset of all amons containing **__only__** 5 heavy atoms
  - All files in any tar file are of `SDF` format, containing both 3d geometry and connectivity between atoms
  - SMILES string is appended to the end of each sdf file, canonicalized by OEChem.
  - Each sdf file is of format `frag_[[ID]]_optg.sdf`, with `ID` being a unique identity assigned to the associated molecular graph


# Notes on geometries
- Each amon is accompanied with only one conformer
- Each conformer corresponds to the coarse "global minima", determined through MMFF94 in RDKit
- Reported final geometry (see sdf files) were calculated at the level of theory DF-B3LYP by Molpro
  - default geometry convergence thresholds were used
  - basis: cc-pVTZ-PP for Sn/I, cc-pVTZ for all others
  - df basis: def2-QZVPP/jkfit for Sn/I, cc-pVQZ/jkfit for all others
  
