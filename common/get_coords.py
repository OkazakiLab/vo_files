
filein = 'Vo_cring_CA.pdb'
fileout = 'Vo_cring_CA.data'

fin = open(filein,'r')
fout = open(fileout,'w')
for line in fin:
    if line[0:4]=='ATOM':
        x = float(line[30:38])
        y = float(line[38:46])
        z = float(line[46:54])
        fout.write("%8.3f%8.3f%8.3f\n" % (x,y,z))
fin.close()
fout.close()


