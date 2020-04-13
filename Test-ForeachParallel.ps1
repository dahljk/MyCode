# check to see if I can use foreach -Parellel

$array = @("C:\Users\Net\Downloads","C:\Temp")

$array | foreach-object -parallel { Get-ChildItem $_ }