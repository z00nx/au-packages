$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.7.exe'
  checksum               = '5b41010a28857bf842ddd671d13896ff7a186144e792e674ac0b5d87b50e3934'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.7.exe'
  checksum64             = 'd418b047d8f77d6ae804a5121d18d941bc45ca47c30f553d0034d6136c3069a4'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

