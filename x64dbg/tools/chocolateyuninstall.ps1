$ErrorActionPreference = 'Stop';
$packageName = 'x64dbg'
$path = 'FLARE\Debuggers\'

$toolsDir = ${Env:ProgramFiles}
$toolsDir = Join-Path $toolsDir $packageName

$shortcut32 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $path + "x32dbg.lnk"
$shortcut64 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $path + "x64dbg.lnk"

Remove-Item $toolsDir -Recurse

Remove-Item $shortcut32
Remove-Item $shortcut64

Uninstall-BinFile -Name 'x32dbg.exe'
Uninstall-BinFile -Name 'x64dbg.exe'