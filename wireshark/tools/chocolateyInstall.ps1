$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.6.exe'
  checksum               = 'a76e70694b1914c3bf2c5267c234d44db58a605b88c274473368cb57b4262c1f'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.6.exe'
  checksum64             = 'e440a059fba3572000b5695ca89438d5765b9d73d830556344d7e8cdad071617'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

