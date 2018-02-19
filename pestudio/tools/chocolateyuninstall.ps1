$ErrorActionPreference = 'Stop';
$packageName = 'pestudio'

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Remove-Item $shortcut
