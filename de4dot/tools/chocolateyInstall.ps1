$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/5f61t8d66alevmnb/artifacts/de4dot/de4dot-netcoreapp2.1.zip'
  checksum               = 'e4b92297c5e2fecf31e4d1d06a398d002495d0dad8adf9a7e692c298c439ffbc'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
