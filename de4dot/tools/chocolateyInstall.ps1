$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/5vwp9iw3dw7n01pn/artifacts/Release/de4dot-net35.zip'
  checksum               = 'afb815f971e13b93e8cb7255a0cec5805dcae4b1acb3fda886fdc56b250b3f02'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
