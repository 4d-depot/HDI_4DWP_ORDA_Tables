C_TEXT:C284($Path)

$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.svg"
WP EXPORT DOCUMENT:C1337(WParea2; $path; wk svg:K81:356)

OPEN URL:C673($Path)
