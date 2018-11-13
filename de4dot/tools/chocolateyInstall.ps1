$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/r05d3xt4lovgcqj8/artifacts/Release/de4dot-net35.zip'
  checksum               = 'd4edc000c6a035636ce4aa49e67deb0f04425a74ad4fd77f52be4125de290f3c'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
