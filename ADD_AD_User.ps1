<#
Title: Powershell AD Automation 
Author: Jamie Giannini
Objectives: Write a Powershell script that adds the below person to AD
[X] Franz Ferdinand is the TPS Reporting Lead at GlobeX USA in Springfield, OR office. Franz is part of the TPS Department. Franz’s email is ferdi@GlobeXpower.com
#>

Import-Module ActiveDirectory

New-ADUser -Name "Franz Ferdinand" -SamAccountName "fFerdinand" -City "Springfield" -Path "OU=TPS_OU,DC=corp,DC=globexpower,DC=com" -EmailAddress "ferdi@GlobeXpower.com" -State "Oregon" -Title "TPS Reporting Lead" -ChangePasswordAtLogon $False -Enabled $True -AccountPassword (Read-Host -AsSecureString "Input User Password")

Add-ADGroupMember -Identity "TPS Reporting" -Members "fFerdinand" #add to group
