# vmd -dispdev text -e fix_mineq2.tcl

mol load psf Vo_E63dpp.psf pdb Vo_E63dpp.pdb

set all [atomselect top all]
$all set beta 0

set fixed [atomselect top "protein and not hydrogen"]
$fixed set beta 1

$all writepdb fix_mineq2.pdb

exit
