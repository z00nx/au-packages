$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.6.exe'
  checksum               = '702d61e63e5496fa7c952b97652cf2455b378b46ca1c808d7f5201bfddb51062'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.6.exe'
  checksum64             = '9021124cd54bbd3301dcd98dbfa32f989ce9631e37cb652c2722bb8a3e561a33'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

