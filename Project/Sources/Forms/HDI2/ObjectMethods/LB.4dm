If (Form:C1466.trace)
	TRACE:C157
End if 

If (Form:C1466.currentCompany#Null:C1517)
	WP SET DATA CONTEXT:C1786(WParea2; New object:C1471("company"; Form:C1466.currentCompany))  //Form.currentCompany is the currently selected item in the list box
	WP COMPUTE FORMULAS:C1707(WParea2)
End if 
