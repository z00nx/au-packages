$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.5.exe'
  checksum               = '9c9a459cec8866b82f68e35d6376d6d121123f3551bd83a17b36193e32828d2f'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.5.exe'
  checksum64             = '1ee5afdc18efda2781a88da6a360a28ae88feaaecdc7c3246fb98767abcc7654'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

