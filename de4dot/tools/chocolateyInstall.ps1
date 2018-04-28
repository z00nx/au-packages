$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/me1vfh5adel0n7sk/artifacts/de4dot.zip'
  checksum               = 'ef97b9561554ae4ee0f77a4482a35e05b90351432ed5d9c85ce0fd6a44c290f6'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
