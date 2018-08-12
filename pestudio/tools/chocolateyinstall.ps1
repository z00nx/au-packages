$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName = 'pestudio'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'
  checksum      = '4f976a0f40d55a951771ad630ebfa7bf11779bd05a075a55ca241341e61dc292'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "pestudio\pestudio.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
