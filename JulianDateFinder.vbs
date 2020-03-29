'interprets user input and returns a Julian Date for a given calendar date or vice versa.

Dim input, CalendarDate, JulianDate, twoDigitYear, oneDigitYear, currentJulianDate

currentJulianDate = Right(Year(Date),2) & String(3-Len(Date - DateSerial(Year(Date),1,0)),"0") & Date - DateSerial(Year(Date),1,0)

Do

	input = InputBox("Type the date you're looking for below. (MM/DD/YY or Julian Date)","Sgt Neal's Badass Julian Date Finder  - " & currentJulianDate)
	 
	If input = "" Then
		Exit Do
	End If
	 
	If InStr(input,"/") Then  
		CalendarDate =  CDate(input)
		JulianDate = Right(Year(CalendarDate),2) & String(3-Len(CalendarDate - DateSerial(Year(CalendarDate),1,0)),"0") & CalendarDate - DateSerial(Year(CalendarDate),1,0)
		
		ElseIf Len(input) = 5 Then
			twoDigitYear = Left(input,2)
			CalendarDate = DateAdd("d",(Int(Right(input,3))),CDate("01/01/" & twoDigitYear)-1)

		ElseIf Len(input) = 4 Then
			oneDigitYear = Left(input,1)
			CalendarDate = DateAdd("d",(Int(Right(input,3))),CDate("01/01/201" & oneDigitYear)-1)

	End If

	If JulianDate <> "" Then
		MsgBox JulianDate, 0, "Julian Date"
		ElseIf CalendarDate <> "" Then
			MsgBox CalendarDate, 0, "Calendar Date"
		ElseIf Len(input) <> 0 Then
			MsgBox "Format not recognized.", 0, "Error!"
	End If

Loop While Len(input) > 0







