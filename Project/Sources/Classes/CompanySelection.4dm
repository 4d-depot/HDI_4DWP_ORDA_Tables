Class extends EntitySelection


Function printDetail($template : Object)
	
	SET PRINT PREVIEW:C364(True:C214)
	
	For each ($company; This:C1470)
		WP SET DATA CONTEXT:C1786($template; New object:C1471("company"; $company))
		WP PRINT:C1343($template)
	End for each 
	