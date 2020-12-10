$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.1.exe'
  checksum               = '7fb41f10b7b55fe7208504a1b3ba54346995592f223d85073fafb721b7ae43e8'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.1.exe'
  checksum64             = 'a078a0d97ed271a97fad294654b581b16db9926e80fd66c916b079d8fece1d45'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

