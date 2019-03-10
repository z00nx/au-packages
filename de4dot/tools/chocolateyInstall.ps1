$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/galkqpugmv5h2hjw/artifacts/Release/de4dot-net35.zip'
  checksum               = 'd947ecf5498f794d8ada462f28662c552465b58b1f9c52af0bf8cac037258731'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
