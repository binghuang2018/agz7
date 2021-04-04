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
  - `gdb17-zinc-comm.can`: SMILES strings of amons that are shared by gdb17 & zinc
  - `gdb17.can`: SMILES strings of amons that are unique to gdb17
  - `zinc.can`: SMILES strings of amons that are unique to ZINC
- Folders containing 3d geometries of amons
  - `gdb17/` covers the complete set of gdb17 amons (i.e., `gdb17-zinc-comm.can`+`gdb17.can`) that survived geometry relaxation.
  - `zinc/` covers only a subset of SMILES strings in `zinc.can`, that is, amons that are unique to gdb17 and survived geometry relaxation.
- Compressed tar files
  - Files in say, `zinc/ni5.tar.gz` indicates the subset of all ZINC amons containing **__only__** 5 heavy atoms
  - Geometry and prperties of each AMON are stored as `key:value` pair in a `json` file (see `zinc/README.md` for content details), except for AMONs that didn't survive geometry optimization (i.e., dissociated), for which only `xyz` file is provided.
  - SMILES string (canonicalized by OEChem) & bond order matrix are both available in json file for all but dissociated AMONs
  - The name of a json file is of format `[[ID]].json`, with `ID` being a unique identity assigned to the associated molecular graph


# Notes on geometries
- Each amon is accompanied with only one conformer
- Each conformer corresponds to the coarse "global minima", determined through MMFF94 in RDKit
- Reported final geometry (see sdf files) were calculated at the level of theory DF-B3LYP by Molpro
  - default geometry convergence thresholds were used
  - basis: cc-pVTZ-PP for Sn/I, cc-pVTZ for all others
  - df basis: def2-QZVPP/jkfit for Sn/I, cc-pVQZ/jkfit for all others

# Reference
```bash
@misc{agz7,
    title={Dictionary of 140k GDB and ZINC derived AMONs},
    author={Bing Huang and O. Anatole von Lilienfeld},
    year={2020},
    eprint={2008.05260},
    archivePrefix={arXiv},
    primaryClass={physics.chem-ph}
}```
