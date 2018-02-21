$toolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageName     = 'networkminer'
$url             = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32      = '971ea40fd1882a720d72e06c8105bf16fe437d1206527c5f9e00efc9be789345'
$networkMinerDir = 'NetworkMiner_2-2'

$packageArgs = @{
  packageName    = $packageName
  url            = $url
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = $toolsDir
}
    
Install-ChocolateyZipPackage @packageArgs

Move-Item $toolsDir\$networkMinerDir\* $toolsDir\

Remove-Item -Recurse $toolsDir\$networkMinerDir

$target = Join-Path $toolsDir "NetworkMiner.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"

Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target
