$toolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageName     = 'networkminer'
$url             = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32      = '3f11dc812a9a3c84fafa29660e6142464582825569771e1f60bd6568e0269b23'
$networkMinerDir = 'NetworkMiner_2-5'

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
