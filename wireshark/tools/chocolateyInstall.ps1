$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.6.exe'
  checksum               = '6395ca0265207dcdcb1080073591968dec2711cbea27708efb83bbd6c3a32235'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.6.exe'
  checksum64             = '025c68ae6ac5a4ae146ba8318f596089859c9d5d890b688ed8c1498745779412'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

