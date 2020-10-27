$toolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageName     = 'networkminer'
$url             = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32      = '34d81e42eec33183b79191de165ae506933fa3bb5b1fd836e70ef81468c9c65b'
$networkMinerDir = 'NetworkMiner_2-6'

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
