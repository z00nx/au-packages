$ErrorActionPreference = 'Stop';
$packageName = 'x64dbg'

$toolsDir = ${Env:ProgramFiles}
$toolsDir = Join-Path $toolsDir $packageName

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/x64dbg/x64dbg/releases/download/snapshot/snapshot_2017-12-20_11-41.zip'
  checksum      = '3322df0c2143aed9356345c6595d25bccde26a4aa5572bbbc60a42c56d877117'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs


$target32 = Join-Path $toolsDir "release\x32\x32dbg.exe"
$shortcut32 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + "\x32dbg.lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut32 -targetPath $target32 -RunAsAdmin -PinToTaskbar
Install-BinFile -Name 'x32dbg.exe' -Path $target32

$target64 = Join-Path $toolsDir "release\x64\x64dbg.exe"
$shortcut64 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + "\x64dbg.lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut64 -targetPath $target64 -RunAsAdmin -PinToTaskbar
Install-BinFile -Name 'x64dbg.exe' -Path $target64
