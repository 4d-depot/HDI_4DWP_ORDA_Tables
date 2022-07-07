C_TEXT:C284($path)

$path:=Get 4D folder:C485(Current resources folder:K5:16)+"brochure.4wp"
[DOC:1]SampleDoc:2:=WP Import document:C1318($path)
