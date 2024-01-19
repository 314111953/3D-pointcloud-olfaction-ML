# 3Dpointcloud based olfaction ML
The python code requires rdkit environment. Dataset is got from the following website: www.kaggle.com/datasets/aryanamitbarsainyan/multi-labelled-smiles-odors-dataset
The first column of the dataset containing the smiles is saved as mol_list.csv. After obtaining the dataset, the following steps are to be done in the order/

**Conformer generation**
The **Olfaction_conformer_gen.ipynb** generates thousnd conformers for each of the smiles present in the dataset(mol_list.csv).The conformers are saved in pdb files (A pdb file will contain thousand conformers for a particular smile)

**Conformer extraction**
The conformers are then extracted from pdb files. The shell script **pdb_splitter.sh** is placed and executed in the directory containing pdb files. 

**Cif conversion**
The cif conversion requires an external software called VESTA (http://jp-minerals.org/vesta/en/download.html). Download the windows version The cif conversion can only be done in Windows system using the **cif_converter.bat**. The Analogous linux code using for loop can be utilized for Linux system but not for MacOS. Place the bat file where your pdb files are, remove non pdb files from the directory. Go to Windows CMD and go to the directory where the bat file is located and execute bat file using run **cif_converter.bat**.

**Generate Promolecule density**
Chmpy python package will be required for this. Install chmpy using **pip install chmpy**. In a folder which only contain the cif files place the python file and assign its folder path to variable directory in the **Promolgen.py** file. Create a new directory for storing csv files and assign its folder path to the csv path variable in the **Promolgen.py** file. Execute the python code.

The python code will generate the Promolecule density for each of the conformer and save it as csv file. The csv file will be used for ML purposes


