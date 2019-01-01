$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/uo12ysebxk44wuwo/artifacts/Release/de4dot-net35.zip'
  checksum               = '1ab0297ba83739d3508344f57405c041f610dd22e5246b65166d06b884cc04d7'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
