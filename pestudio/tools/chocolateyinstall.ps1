$ErrorActionPreference = 'Stop';
$packageName = 'pestudio'

$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'
  checksum      = 'df06d029424694fed718f11054c925f8c4079c4ff61b514d0cc701e5a8a58a66'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "pestudio\pestudio.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
