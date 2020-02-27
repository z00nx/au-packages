$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.2.exe'
  checksum               = '73af61a1edae2af371e432a09bbda8af48a8ada0ea789592ff24499d80070ae6'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.2.exe'
  checksum64             = 'cc9b49c696219cc093debaae11febeb546b2a508f41150b983ae0af6954c0512'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

