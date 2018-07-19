$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.2.exe'
  checksum               = '3d886e435570b7326f53d00996040ef65b9e2a5bffe48645ce29ea5a23930801'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.2.exe'
  checksum64             = '88aa2ca018090fc73ffb273aa1ba9f690ec06deb77d1ec7ff9b39fe646ca2877'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

