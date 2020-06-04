﻿$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.4.exe'
  checksum               = 'c17e4a812031d5dfd4ef0a4b4dae1b60bb45eb7ce8c9e8b1b5eff4db5bcf4b72'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.4.exe'
  checksum64             = 'db2565ee6410b7c57f54aaac86954e4f6a98e2ea31ffbea83e60b981fff57301'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

