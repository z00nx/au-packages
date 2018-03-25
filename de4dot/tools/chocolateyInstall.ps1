$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/46f7aa34ks9aa5me/artifacts/de4dot.zip'
  checksum               = 'ad434b46b841e245a65b23df6eb74478264af8a8e5101aaca4aa7e54b6fa0a47'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
