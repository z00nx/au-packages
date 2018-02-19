$ErrorActionPreference = 'Stop';
$packageName = 'ilspy'

$toolsDir = ${Env:ProgramFiles(x86)}
if(-Not ($toolsDir)) {
  $toolsDir = ${Env:ProgramFiles}
}
$toolsDir = Join-Path $toolsDir $packageName
$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Remove-Item $toolsDir -Recurse
Remove-Item $shortcut
Uninstall-BinFile -Name 'ILSpy.exe'
