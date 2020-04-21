$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'fiddler4'
  fileType               = 'EXE'
  url                    = 'https://www.telerik.com/docs/default-source/fiddler/fiddlersetup.exe'
  checksum               = '207E1A39C74A03AE535AD04FE74BC435BAA777ECEFAEC95ABE78664CD2B34690'
  checksumType           = 'sha256'
  silentArgs             = '/S /D=C:\Program Files\Fiddler'
  validExitCodes         = @(0)
  softwareName           = 'fiddler*'
}
Install-ChocolateyPackage @packageArgs
