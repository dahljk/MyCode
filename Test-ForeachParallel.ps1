 check to see if I can use foreach -Parellel

$array = @("C:\Users\Net\Downloads","C:\Temp")

$t = Measure-Command {Get-ChildItem "C:\Temp"}
$t
# foreach  ($folder in $array) {
#     Write-Output $folder
#     Get-ChildItem $folder | c:\users\downloads\
# }

$t = (Measure-command ($array | foreach-object -parallel { Get-ChildItem $_ }))
$t

$array | foreach-object -parallel { Get-ChildItem $_ }