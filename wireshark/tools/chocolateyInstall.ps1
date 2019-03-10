$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.0.exe'
  checksum               = 'ca59a35866b5837578070ae064bb099d7a50b81be6b86884679aa86ef08ea89f'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.0.exe'
  checksum64             = 'b5d30a9c0b2835a41e8132b1d9246a01ad6f1461a4de14fa3ccbdf4919c70eac'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

