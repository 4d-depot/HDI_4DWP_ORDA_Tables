C_TEXT:C284($version; $maintext; $subtext)
C_TEXT:C284($r)
C_TEXT:C284($format)
C_LONGINT:C283($width; $height; $shift)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.quit:=False:C215
		
		
		If (Form:C1466.info=Null:C1517)
			OBJECT SET VISIBLE:C603(*; "labelInfo"; False:C215)
			OBJECT SET VISIBLE:C603(*; "txtInfo"; False:C215)
			
		End if 
		
		If (Form:C1466.blog=Null:C1517)
			OBJECT SET VISIBLE:C603(*; "labelBlog"; False:C215)
			OBJECT SET VISIBLE:C603(*; "txtBlog"; False:C215)
		End if 
		
		If (Form:C1466.title=Null:C1517)
			OBJECT SET VISIBLE:C603(*; "txtTitle"; False:C215)
		Else 
			OBJECT SET TITLE:C194(*; "txtTitle"; Form:C1466.title)
		End if 
		
		
		If (Form:C1466.minimumVersion=Null:C1517)
			OBJECT SET VISIBLE:C603(*; "labelVersion"; False:C215)
			OBJECT SET VISIBLE:C603(*; "txtVersion"; False:C215)
		Else 
			
			$version:="4D v"+Substring:C12(Form:C1466.minimumVersion; 1; 2)
			If (Length:C16(Form:C1466.minimumVersion)>2)
				$r:=Substring:C12(Form:C1466.minimumVersion; 3; 1)
				If ($r#"0")
					$version:=$version+" R"+$r
					
					// icon
					
					$format:=OBJECT Get format:C894(*; "Icon4D")
					$format:=Replace string:C233($format; "4D.png"; "4DR.png")
					OBJECT SET FORMAT:C236(*; "Icon4D"; $format)
					
				End if 
			End if 
			
			$maintext:=OBJECT Get title:C1068(*; "TxtVersion")
			$maintext:=Replace string:C233($maintext; "{version}"; $version)
			OBJECT SET TITLE:C194(*; "TxtVersion"; $maintext)
			
			If (Application version:C493<Form:C1466.minimumVersion)
				
				Form:C1466.quit:=True:C214
				OBJECT SET TITLE:C194(*; "BtnDemo"; "Quit 4D")
				
				$maintext:=OBJECT Get title:C1068(*; "ErrorMainText")
				$maintext:=Replace string:C233($maintext; "{version}"; $version)
				OBJECT SET TITLE:C194(*; "ErrorMainText"; $maintext)
				
				OBJECT SET VISIBLE:C603(*; "ErrorMainText"; True:C214)
				OBJECT SET VISIBLE:C603(*; "ErrorSubText"; True:C214)
				OBJECT SET VISIBLE:C603(*; "White90"; True:C214)
				
			End if 
		End if 
		
		
		If (Form:C1466.license#Null:C1517) & (Form:C1466.quit=False:C215)
			
			If (Not:C34(Is license available:C714(Form:C1466.license)))
				
				Form:C1466.quit:=True:C214
				OBJECT SET TITLE:C194(*; "BtnDemo"; "Quit 4D")
				
				Case of 
						
					: (Form:C1466.license=4D View license:K44:4)
						$maintext:="Sorry, this “How do I” (HDI) example demonstrates a 4D View Pro feature."
						$subtext:="You must have a valid 4D View Pro license to continue."
						
					: (Form:C1466.license=4D Write license:K44:2)
						$maintext:="Sorry, this “How do I” (HDI) example demonstrates a 4D Write Pro feature."
						$subtext:="You must have a valid 4D Write Pro license to continue."
						
				End case 
				
				OBJECT SET TITLE:C194(*; "ErrorMainText"; $maintext)
				OBJECT SET TITLE:C194(*; "ErrorSubText"; $subtext)
				
				OBJECT SET VISIBLE:C603(*; "ErrorMainText"; True:C214)
				OBJECT SET VISIBLE:C603(*; "ErrorSubText"; True:C214)
				OBJECT SET VISIBLE:C603(*; "White90"; True:C214)
				
			End if 
			
		End if 
		
End case 
