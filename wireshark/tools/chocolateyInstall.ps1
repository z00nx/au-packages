$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.3.exe'
  checksum               = '98fe809f13ea9a1e917b467f7cc6b9c0a32b1f5610406d764348edf4704fe326'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.3.exe'
  checksum64             = 'e345963a475b79df937b41e297e8680f1f4f0cc8e8bee715fafc50834e6cc44d'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

