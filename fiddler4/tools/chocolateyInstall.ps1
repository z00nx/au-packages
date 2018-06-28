$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = 'DD9C48E2C37124477320DDEF083DD0FAFCB1B59E0ADE9E881D85FC80EBB82351'
  checksumType           = 'sha256'
  silentArgs             = '/S /D=C:\Program Files\Fiddler'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
