$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.3.exe'
  checksum               = '7e5288224c0efc666fd15852e49ed7864e0a70971b5c09181ccfe5f71fd27d6e'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.3.exe'
  checksum64             = 'fbe322534581feba53564d99a342f8a75aaa178af8efbaa9fe9e9298233af41d'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

