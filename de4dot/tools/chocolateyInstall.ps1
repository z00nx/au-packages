$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/ae8y2q8s9lavy3un/artifacts/de4dot.zip'
  checksum               = 'b9b4980cb4013998bab7ff3ab1a06da57bf1cad239ae172c583f397f930c5392'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
