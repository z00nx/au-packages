$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.6.exe'
  checksum               = '1b0b2a495878710417bb49640971d8188039c60d669a5ca8cfa273b027274d49'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.6.exe'
  checksum64             = '9c211a6eda5f69b2c10dd1a794f8a438c1dafbe5da4879b807be496d8f29a6c4'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

