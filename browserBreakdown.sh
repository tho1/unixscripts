#!/bin/bash 

###################################################
#  This script try to extract the browser usage.
#  given the line have the word Browser[Mozilla...] 
#
#  It would skip lines with the robots.txt and head
#  It would parse out Mozilla, FireFox, IE, and Safari 
#
#  TODO: need to use associative array to capture the
#  data and generate report out of it.
#  TODO: capture more browser type
###################################################


PROD_LOG_DIR=/cygdrive/c/bin/scripts
LOG_FILE=$PROD_LOG_DIR/b.txt

if [ -e $LOG_FILE ]; then

	#echo "file found"
	
	cat $LOG_FILE | while read myline 
	do 	
		#check for robots.txt, HEAD
		robot="robots.txt"
		head="HEAD"
	
		if echo "$myline" | grep -q "$head"; then
			continue;
		fi
		
		if echo "$myline" | grep -q "$robot"; then
			continue;
		fi
		
		browser="${myline#*Browser[}"
		#echo "$browser"
		browser="${browser%%]*}"
		#echo "the value is $browser"
	
		applewebit="AppleWebKit"
		ie="MSIE"
		firefox="Firefox"
		mozilla="Mozilla"
		opera="Opera"
		chrome="Chrome/"
		
		if echo "$browser" | grep -q "$applewebit"; then
			#echo "find applewebkit"
			#need to decide is it chrome or safari.
			
			if echo "$browser" | grep -q "$chrome"; then
				chromeValue="${browser#*$chrome};"
				chromeValue="${chromeValue%% *}"
				#echo "Chrome version is $chromeValue"
			else  #this is Safari
				safariValue="${browser#*Version/};"
				safariValue="${safariValue%% *}"
				echo "Safari version is $safariValue"
			fi
		fi
		
		if echo "$browser" | grep -q "$ie"; then
			ieValue="${browser#*$ie};"
			ieValue="${ieValue%%;*}"
			echo "ie version is $ieValue"
		fi
		
		
		if echo "$browser" | grep -q "$firefox"; then
			ffValue="${browser#*$firefox/};"
			ffValue="${ffValue%%;*}"
			echo "firefox version is $ffValue"
		fi
		
		
		if echo "$browser" | grep -q "$opera/"; then
			opValue="${browser#*$opera/};"
			opValue="${opValue%% *}"
			echo "Opera version is $opValue"
		fi
		
	
	done		
	
else
	echo "file $LOG_FILE not found!"
fi

exit 0



-- load as dialog form.
frmCustomer.showDialog()

Convert.ToString()

-- check when the enter keys is pressed.

 Private Sub TextPass_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextPass.KeyDown
        If e.KeyCode = Keys.Enter Then
            Call check()
        End If
    End Sub

	
	
	
 If Me.TxtConfirmpass.Text <> Me.TxtPassword.Text Then
            MsgBox("Mismatch Password", MsgBoxStyle.Exclamation)
            Me.TxtConfirmpass.Focus()
 End IF			

Try
            Dim a As Integer
 
			a = MsgBox("Are you sure you want to update this employee?", MsgBoxStyle.YesNo)
        If a = vbYes Then
			 MessageBox.Show("successfully save")
	Else
            Me.textid.Focus()
        End If
 Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub	
	
	
 With Me
            .TextSearchFname.Clear()
            .TextSearchMname.Clear()
			
			
			
Dim myReader As New System.IO.StreamReader("Somefile.txt") 
Dim Line as String = ""

While Not IsNothing(line)
	line=myReader.ReadLine()
	If Not IsNothing(line) then
		Console.WriteLine(line)
	End If
End While

myReader.close()
Console.ReadLine

