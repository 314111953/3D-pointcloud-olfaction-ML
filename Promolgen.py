from chmpy import Crystal,Molecule
import os
import numpy as np
directory='file_path_where_cif_files_exist'
for filename in os.listdir(directory):
  f=os.path.join(directory,filename)
  c=Crystal.load(f)
  surfaces=c.promolecule_density_isosurfaces(sep=0.2)
  surface=np.array(surfaces[0].vertices)
  csv_filename=filename.replace('.cif','.csv')
  csv_path=os.path.join('directory_without_cif files',csv_filename)
  np.savetxt(csv_path, surface, delimiter=',')
