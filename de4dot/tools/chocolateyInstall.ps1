$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/4yjo2h2j4h80e10r/artifacts/de4dot.zip'
  checksum               = 'ca9e56687c2f2cfe8972ac0c9aa531e6bb7a16d2156355ce94734d62c3c01782'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
