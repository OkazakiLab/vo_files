# vmd -dispdev text -e fix_mineq1.tcl

mol load psf Vo_E63dpp.psf pdb Vo_E63dpp.pdb

set all [atomselect top all]
$all set beta 0

set fixed [atomselect top "(protein or lipids) and not hydrogen"]
$fixed set beta 1

$all writepdb fix_mineq1.pdb

exit
