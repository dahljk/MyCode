# script to see if I can manipulate file shares with PowerShell

# to get current shares and list their properties
# Get-SMBShare
# Get-SmbShare -Name "VMS1" | Format-List -Property *

# to dump out existing Share Permissions, use Get-SmbShareAccess
# Get-SmbShareAccess -Name "VMFiles"


# new-SmbShare seems to be the cmdlet to use
# New-SmbShare -Name "VMSFiles" -Path "C:\ClusterStorage\Volume1\VMFiles" -FullAccess "Contoso\Administrator", "Contoso\Contoso-HV1$" -CachingMode None
# New-SmbShare -Name "VMSFiles" -Path "C:\ClusterStorage\Volume1\VMFiles" -ChangeAccess "Users" -FullAccess "Administrators" -CachingMode None
# there are also parameters for -ReadAccess, -ChangeAccess, and -NoAccess

# for granting access, you can use Grant-SmbShareAccess
# Grant-SmbShareAccess -Name VMFiles -AccountName "Contoso\Domain Admins" -AccessRight Change -Force


# I'll also need to have a script to delete the old DFS links, create new DFS links, and also to update the user accounts