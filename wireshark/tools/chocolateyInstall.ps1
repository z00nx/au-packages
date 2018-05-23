﻿$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.1.exe'
  checksum               = 'f1e2a07e696338217671b58076073ad3a8ae165ece7fcb71866b6dcc750e1bf8'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.1.exe'
  checksum64             = '7fea0e6edf6e6a10d277a354fc9982c6d15c2f2aa05ec13c714e077b8c8760a9'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

