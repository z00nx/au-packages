$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/bo4guihqetyra6i2/artifacts/de4dot-netcoreapp3.0.zip'
  checksum               = '0572a5e32ac6683cef5b20ee8688ae30e9de66c55ef73a07f07f58b28c978baa'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
