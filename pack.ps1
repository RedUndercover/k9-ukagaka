<#
Ghost Packager For PowerShell v0.1
--------------------------------------
Purpose: Packages the specified folder as a ghost .nar file for easy installation.
Authors: RedUndercover, RowanWitch

Uses $$PSScriptRoot, Needs PowerShell V.3+
Has some problems if you keep old .nar files in the same folder, might be fixed in a future version.
#>

#Config
$Folder = "r_k9\" #Folder name w/ ghost files
$OutputFile = 'K9_Ghost' #Desired output file name w/o extension

#Scripting
$GhostPath = Join-Path $PSScriptRoot $Folder
Compress-Archive -Path $GhostPath'*' -CompressionLevel Fastest  -DestinationPath $PSScriptRoot'\'$OutputFile
Rename-Item -Path $PSScriptRoot'\'$OutputFile'.zip' -NewName $OutputFile'.nar'
