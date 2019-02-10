$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/4xvhj2hlneh1u1je/artifacts/Release/de4dot-net35.zip'
  checksum               = '03c64a8c65fe4259378bc378f37879c702cb75e700752f2d503f10ca79e26c35'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
