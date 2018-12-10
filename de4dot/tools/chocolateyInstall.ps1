$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/nkq1u01v01uueyt1/artifacts/de4dot/de4dot-netcoreapp2.1.zip'
  checksum               = '09c25e04f3fbfb92d5e7b5c510e349b91bb9e93b5669d0e805f129f56d95c5c7'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
