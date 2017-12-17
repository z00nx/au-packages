$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = ''
  checksum               = ''
  checksumType           = ''
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
