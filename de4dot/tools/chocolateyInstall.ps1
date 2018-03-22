$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/0p3bbs6i5ho6sktm/artifacts/de4dot.zip'
  checksum               = '6cca2ac812fd34ba4bdfaad717ea37e0b2e377309c1051f74f4d8d2749d4a898'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
