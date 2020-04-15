# script to see if I can manipulate file shares with PowerShell

# new-SmbShare seems to be the cmdlet to use
# New-SmbShare -Name "VMSFiles" -Path "C:\ClusterStorage\Volume1\VMFiles" -FullAccess "Contoso\Administrator", "Contoso\Contoso-HV1$"
# New-SmbShare -Name "VMSFiles" -Path "C:\ClusterStorage\Volume1\VMFiles" -ChangeAccess "Users" -FullAccess "Administrators"
# there are also parameters for -ReadAccess, -ChangeAccess, and -NoAccess

# for granting access, you can use Grant-SmbShareAccess
# Grant-SmbShareAccess -Name VMFiles -AccountName "Contoso\Domain Admins" -AccessRight Change -Force

# to dump out existing Share Permissions, use Get-SmbShareAccess

# Get-SmbShareAccess -Name "VMFiles"