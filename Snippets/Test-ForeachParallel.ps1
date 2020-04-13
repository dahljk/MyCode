# check to see if I can use foreach -Parellel, verified by JKD, 2020-04-13

$array = @("C:\Users\Net\Downloads","C:\Temp")

$array | foreach-object -parallel { 
    # get the folder name without the full path
    $folder = $_.Split("\")
    $folder = $folder[$folder.Length -1]
    # get the directory tree and write this out to a text file
    Get-ChildItem $_ -Recurse | out-file "c:\Git\$folder.txt" 

} -ThrottleLimit 10