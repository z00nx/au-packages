$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.2.exe'
  checksum               = 'ea4f9a4b55bed282408d595bf2e86951014e108144662f8add51cb0a7ad034ed'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.2.exe'
  checksum64             = '27d15f43091e002d454fb63f8c438fe4b32a86b57c02c6cb83ef36bdbfaefe09'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

