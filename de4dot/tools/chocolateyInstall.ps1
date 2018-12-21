$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/ul6rh96qsapije57/artifacts/Release/de4dot-net35.zip'
  checksum               = 'af3b4f143707b6b17df543add0b655d724de205b06abde6a8e6f41a733ae906c'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
