$toolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageName     = 'networkminer'
$url             = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32      = '34cb3bc1387b38033f8e7f55c4874eebae0dd96c35f8dbb77776dd05593cec49'
$networkMinerDir = 'NetworkMiner_2-4'

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
