$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'pestudio'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'
  checksum      = '304bc92fd14ad4113644acaf7fdc4316c41516c36883bb9519ba7b8c53f1ccd2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "pestudio\pestudio.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
