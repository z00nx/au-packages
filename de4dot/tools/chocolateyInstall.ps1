$packageName = 'de4dot'
$url = ''
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName            = $packageName
  url                    = 'https://ci.appveyor.com/api/buildjobs/kxqy26nx9kcdumda/artifacts/de4dot.zip'
  checksum               = 'e8227e52c13506c8357a38bc6a7033698431d955709d1e831165d67744531841'
  checksumType           = 'sha256'
  unzipLocation          = $unzipLocation
}

Install-ChocolateyZipPackage @packageArgs
