$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.6.exe'
  checksum               = 'de97cdc3cbbd8c9170cd7fe5d67ab2e09012ccb5217f27294e8c15ac3ce5e8e0'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.6.exe'
  checksum64             = '6cd2b1474d5a031b85fca00538d45487144b36d8e1db1d565fd35d251ac261d0'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

