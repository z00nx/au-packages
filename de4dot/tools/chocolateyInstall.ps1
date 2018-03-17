$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/lsmofpkp3ux6u12f/artifacts/de4dot.zip'
  checksum               = '60e5d1623959fd7ff195140e4b48acd3ebd25cd27fdeae4a392e922f35a30f08'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
