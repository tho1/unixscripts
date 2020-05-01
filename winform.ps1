# ripped from https://blogs.technet.microsoft.com/stephap/2012/04/23/building-forms-with-powershell-part-1-the-form/
# a sample on using powershell to drive a winform.

# Add-type info https://stackoverflow.com/questions/12923074/how-to-load-assemblies-in-powershell
# expert. https://stackoverflow.com/search?q=user:1163423+[powershell]
# Form  https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form?redirectedfrom=MSDN&view=netcore-3.1

# to prevent -Path locking file
# $bytes = [System.IO.File]::ReadAllBytes($storageAssemblyPath)
# [System.Reflection.Assembly]::Load($bytes)

# change the bmp and ico path to test the picture functionality

Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Sample Form"

$Icon = New-Object system.drawing.icon ("a.ico")
$Form.Icon = $Icon
 

$Image = [system.drawing.image]::FromFile("b.bmp")
$Form.BackgroundImage = $Image
$Form.BackgroundImageLayout = "None"

# None, Tile, Center, Stretch, Zoom

 
$Form.Width = $Image.Width
$Form.Height = $Image.Height
$Font = New-Object System.Drawing.Font("Times New Roman",24,[System.Drawing.FontStyle]::Italic)

    # Font styles are: Regular, Bold, Italic, Underline, Strikeout

$Form.Font = $Font

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "This form is very simple."
$Label.BackColor = "Transparent"
$Label.AutoSize = $True

#$btn1 = New-Object System.Windows.Forms.Button
#$btn1.Text = "BtnA"

$Form.Controls.Add($Label)
#$Form.Controls.Add($btn1)
$Form.ShowDialog()
