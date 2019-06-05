$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = '4DFF6CB1B88A503D3982C7CCBCD5622496EBA4C21AAB5A2C0C0F1E376A2EB809'
  checksumType           = 'sha256'
  silentArgs             = '/S /D=C:\Program Files\Fiddler'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
