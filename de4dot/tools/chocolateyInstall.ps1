$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/dl4qvl4lo1krqtrp/artifacts/Release/de4dot-net35.zip'
  checksum               = 'e398e54a20d9a4aba71a23c40054059a97d0b4360f5e9dfb94ec402733746bea'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
