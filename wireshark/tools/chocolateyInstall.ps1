$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.3.exe'
  checksum               = '6f99517f1e3c35be1de40ab9d333e6b3f053a60b7622798b171fef9e0da33c95'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.3.exe'
  checksum64             = '3bb02427d9c29d7fc04bf011f2e4ebd4f23ebe68f275f51d4ae36ee167b6cb03'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

