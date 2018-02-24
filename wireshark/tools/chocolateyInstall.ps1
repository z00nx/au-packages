$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.4.5.exe'
  checksum               = '31687c3c0f9e7c2c0ce610db5c659680083d7204c5fbda4a98fb439a86c90011'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.4.5.exe'
  checksum64             = '867338819182ba636e1b741e87d60f1b06661138c2614db1253f1c75c17ae68c'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

