$modelname player\male_anims.mdl

$include "..\male\commonbones.qci"
$include "..\standardhierarchy.qci"
$include "..\standardikchains.qci"
$include "..\male\hitbox.qci"

$lockbonelengths

//$lockdefinebones

$include "player_anims.qci"
$include "player_macros.qci"

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -4 67.5 absolute
$include "body_poses_lean.qci"
