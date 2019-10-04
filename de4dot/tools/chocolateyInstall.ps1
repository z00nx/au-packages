$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/9iliec2gacwvxy20/artifacts/de4dot-netcoreapp3.0.zip'
  checksum               = '070bdfe1066a359bdaa2203dbc02eae7c0e501208c0f525c8d15cc4edf1f5053'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
