$ErrorActionPreference = 'Stop';
$packageName = 'pestudio'

$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '5ED9378A2555F2EB3B4B4FD9013A5F1D15995774C63EE93873F786607CC4A416'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "pestudio\pestudio.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
