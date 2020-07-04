$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.5.exe'
  checksum               = '728d51ba8e1d551ff29b2432933923112bc5d43100ee4b327085dbdda739dcd1'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.5.exe'
  checksum64             = 'b9626086253e00fbaf35c7d91c768aa4895d0d2e59b4e48b01331dce7cfeb510'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

