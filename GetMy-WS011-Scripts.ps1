# GetMy-WS011-Scripts.ps1
Function Get-MyScript { Param( [string]$AScript,[switch]$EditFile = $False, 
							   [string]$SPath = "$env:USERPROFILE\Downloads\")
			Invoke-Webrequest -Uri "https://raw.githubusercontent.com/LucDorpmans/My-WS-011-Repo/main/$AScript"  -Outfile "$SPath$AScript" 
If ($EditFile) { PSEdit ("$SPath$AScript" )} }

Get-MyScript "Chrome-Download+Run-Installer.ps1" 
Get-MyScript "WAC-Download+Install.ps1"

