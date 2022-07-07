Class extends EntitySelection

Function mailing($template : Object)
	
	SET PRINT PREVIEW:C364(True:C214)
	
	For each ($people; This:C1470)
		WP SET DATA CONTEXT:C1786($template; $people)
		WP PRINT:C1343($template)
	End for each 
	
	
	
	