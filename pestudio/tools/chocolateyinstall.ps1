$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'pestudio'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'
  checksum      = '91c511798616c75ac919632bdcef4a2ff49a48189e7d36d10d015cc2856e8cb2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "pestudio\pestudio.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
