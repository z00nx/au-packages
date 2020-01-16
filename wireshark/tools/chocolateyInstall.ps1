$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.2.1.exe'
  checksum               = '20d8861550367ae6ba588a34eabcd149090a5a2da9f2849a2609857929dd5513'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.1.exe'
  checksum64             = '7c69778b9f35fa5335dc5b8e6e1cbbe2e18a7fdfe77b47edb7402206c93ee5d4'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

