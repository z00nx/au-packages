$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/tfeaywh55gbf23dh/artifacts/de4dot.zip'
  checksum               = 'b319b76ac231cf079d23b08b66ec88b726c02815b66a31276247d11992dd7999'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
