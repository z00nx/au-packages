$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/8s7ddxrm6f35m6se/artifacts/de4dot-netcoreapp3.0.zip'
  checksum               = '1a02879b809da42f4d4a14a2418b3de1b5af78b2f88c49b769665a7ced465790'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
