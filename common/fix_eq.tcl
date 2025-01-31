# vmd -dispdev text -e fix_eq.tcl

mol load psf Vo_E63dpp.psf pdb Vo_E63dpp.pdb

set all [atomselect top all]
$all set beta 0

set fixed [atomselect top "protein and segname PROA and resid 45 to 270 and name CA"]
$fixed set beta 1

$all writepdb fix_eq.pdb

exit
