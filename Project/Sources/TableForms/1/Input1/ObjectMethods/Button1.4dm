C_TEXT:C284($path)

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"brochure.4wp"
WP EXPORT DOCUMENT:C1337([DOC:1]SampleDoc:2; $path; wk 4wp:K81:4; wk normal:K81:7)
