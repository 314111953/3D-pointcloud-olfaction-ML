# 3Dpointcloud based olfaction ML
The python code requires rdkit environment. Dataset is got from the following website: www.kaggle.com/datasets/aryanamitbarsainyan/multi-labelled-smiles-odors-dataset
The first column of the dataset containing the smiles is saved as mol_list.csv.

**Conformer generation**
The Olfaction_conformer_gen.ipynb generates thousnd conformers for each of the smiles present in the dataset.The conformers are saved in pdb files (A pdb file will contain thousand conformers for a particular smile)

**Conformer extraction**
The conformers are then extracted from pdb files. The shell script pdb_splitter.sh is placed and executed in the directory containing pdb files. 

**Cif conversion**
The cif conversion requires an external software called VESTA (http://jp-minerals.org/vesta/en/download.html). Download the windows version The cif conversion can only be done in Windows system using the 


