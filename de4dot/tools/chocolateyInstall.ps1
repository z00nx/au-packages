$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/r9yopsfgp3ub9p8v/artifacts/Release/de4dot-net35.zip'
  checksum               = '656eaf5d84e4b46717f85f111e5313e3997c6635e648178aac8285c26c41eee3'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
