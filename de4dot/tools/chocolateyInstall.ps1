$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/5ali5nq4bh98n01o/artifacts/de4dot.zip'
  checksum               = '88cc6a21e33e097ef3f4c7a829ef6aefa2f8dae07a5ce38406893704c7c6c4bf'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
