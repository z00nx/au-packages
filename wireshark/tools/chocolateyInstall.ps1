$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.5.exe'
  checksum               = '3a08dc164a84835a6ad5b7c0a0c1ae58cc7ce4d13ab66a81e15e8ee3f079a94c'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.5.exe'
  checksum64             = '888ff1269fe7ad887fe03d066094933df5c721100035ae76a85278b1380f8616'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

