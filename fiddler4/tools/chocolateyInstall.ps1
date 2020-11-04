$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = 'AAA4D714EEAAE8F6A96A63110CD239EC44FAC75AE591AB181C13AC837E0EC1A4'
  checksumType           = 'sha256'
  silentArgs             = '/S /D=C:\Program Files\Fiddler'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
