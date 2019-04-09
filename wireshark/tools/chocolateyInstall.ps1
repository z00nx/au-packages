$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.1.exe'
  checksum               = 'c2c4cb14b96d66342f84fdf9da17344db6d5051952b37c1045f104733ee662c4'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.1.exe'
  checksum64             = '80e9bdfcb3bfb3800c202efcdfbb286a2b89d0bf2b8d94f2727d117b0013c821'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

