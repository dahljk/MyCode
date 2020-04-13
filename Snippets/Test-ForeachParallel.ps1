# check to see if I can use foreach -Parellel, verified by JKD, 2020-04-13

$array = @("C:\Users\Net\Downloads","C:\Temp")

$array | foreach-object -parallel { 
    $folder = $_.Split("\")
    $folder = $folder[$folder.Length -1]
    Get-ChildItem $_ | out-file "c:\Git\$folder.txt"

} -ThrottleLimit 10