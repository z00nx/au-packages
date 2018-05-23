$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/6s1s4f2a4171yn5k/artifacts/de4dot.zip'
  checksum               = '09e300166f7a86eb2b20a984245781b5ce30509a82bc34bc2f7afbe0e537aef2'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
