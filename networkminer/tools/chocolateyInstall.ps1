$toolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageName     = 'networkminer'
$url             = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32      = '6bdca02443beceb1d57750eb63c239f73a6f5c7dd70e9d0f76129e85b25eb77a'
$networkMinerDir = 'NetworkMiner_2-3'

$packageArgs = @{
  packageName    = $packageName
  url            = $url
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = $toolsDir
}
    
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir $networkMinerDir

$target = Join-Path $target "NetworkMiner.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
