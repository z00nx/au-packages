$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = '2AFE37AB5CDB7DF4A80FCBE85B9298F509DF064173E6A4EE7008E5D409BC6172'
  checksumType           = 'sha256'
  silentArgs             = '/S /D=C:\Program Files\Fiddler'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
