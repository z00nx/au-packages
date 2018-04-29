$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/1fqpwv8oy3l3gd1u/artifacts/de4dot.zip'
  checksum               = '4b57c4e0cf47365f59a07342ed5a6aea6231f3f4b6aba567d89ca3d0c5974b09'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
