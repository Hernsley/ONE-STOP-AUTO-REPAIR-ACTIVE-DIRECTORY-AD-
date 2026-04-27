Import-Module ActiveDirectory

$users = @("mechanic1","mechanic2","mechanic3","mechanic4","mechanic5","mechanic6","mechanic7")

foreach ($user in $users) {
 New-ADUser -Name $user `
 -SamAccountName $user `
 -UserPrincipalName "$user@autorepair.local" `
 -AccountPassword (ConvertTo-SecureString "P@ssword123" -AsPlainText -Force) `
 -Enabled $true `
 -Path "OU=Mechanics,OU=Users,DC=autorepair,DC=local"
}
