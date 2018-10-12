$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-2.6.4.exe'
  checksum               = 'e2a75ec989c8c9c00cd197be7f137707fbc924899fdae2e50e5515b27e7d0ed5'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-2.6.4.exe'
  checksum64             = '3ca543a311a9ec3f9b2045768ead78af3acd19f8fa447aae9885712c5f8aaddb'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

