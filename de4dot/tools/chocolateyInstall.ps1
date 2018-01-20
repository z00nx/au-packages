$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/hc17qcfnn52vlayp/artifacts/de4dot.zip'
  checksum               = '5390eae62bade0db1bb5ad1db045346482c4eed8573ca469e3ed7813891a875a'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
