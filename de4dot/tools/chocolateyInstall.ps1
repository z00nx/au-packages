$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/0rfp1q6sks8axk4g/artifacts/de4dot.zip'
  checksum               = '193c533a7743ca005f7bc31baeb081768662afda2b99f4a4f74f42004f2563a6'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
