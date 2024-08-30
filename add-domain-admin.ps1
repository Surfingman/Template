param (
    [string]$domainAdmin
)

$group = [ADSI]"WinNT://./Administrators,group"
$user = [ADSI]"WinNT://$domainAdmin"
$group.Add($user.Path)
