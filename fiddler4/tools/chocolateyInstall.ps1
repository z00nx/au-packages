$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = '1E42133A348BF6889D92F7880C9C40FCBA558F83EA0720E74375AF6FA8184F07'
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
