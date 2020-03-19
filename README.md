# agz7 dataset 
Complete enumerations of amons with up to 7 heavy atoms for GDB17 and ZINC

For how-to on amons generation, go to https://github.com/binghuang2018/aqml

# Features
- A wide coverage of organic chemistry, including H, B, C, N, O, F, Si, S, P, Cl, Br, I, Sn
- Amons under both subfolders together can be used as a training set in QML for quantum chemistry problems related to organic molecules
  - quantum properties prediction
  - geometry optimization
  - molecular dynamics 
  - ...

# Notes on files/folders 
- Files containing canonical SMILES string (canonicalized by OEChem)
 - `comm.can`: SMILES strings that are shared by gdb17 & zinc amons
 - `gdb17.can`: SMILES strings that are unique to gdb17 amons
 - `zinc.can`: SMILES strings that are unique to ZINC amons
- Folders containing 3d geometries of amons
 - `gdb17` covers only a subset of the complete list of gdb17 amons (i.e., `comm.can`+`gdb17.can`), i.e., amons that survived geometry relaxation. 
 - `zinc` covers only a subset of SMILES strings in `zinc.can`, which survived geometry relaxation.
- Compressed tar files
 - Files in say, `ni5.tar.gz` indicates the subset of all amons containing **__only__** 5 heavy atoms
 - All files in any tar file are of `SDF` format, containing both 3d geometry and connectivity between atoms
 - SMILES string is appended to the end of each sdf file, canonicalized by OEChem.
 - Each sdf file is of format `frag_[[ID]]_optg.sdf`, with `ID` being a unique identity assigned to the associated molecular graph


# Notes on geometries
- Each amon is accompanied with only one conformer
- Each conformer corresponds to the lowest energy configuration, among all other local minimas.
- The lowest energy conformers were determined through force-field (MMFF94)
- Reported final geometry (see sdf files) were calculated at the level of theory DF-B3LYP by Molpro
  - default geometry convergence thresholds were used
  - basis: cc-pVTZ-PP for Sn/I, cc-pVTZ for all others
  - df basis: def2-QZVPP/jkfit for Sn/I, cc-pVQZ/jkfit for all others
  
