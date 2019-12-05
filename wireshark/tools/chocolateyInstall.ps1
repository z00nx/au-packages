$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.7.exe'
  checksum               = '638141dadcc14ff14738aacc795439ef347e515cc7eb40d0624d5ecdf04c9a71'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.7.exe'
  checksum64             = 'b246db3ef635c5bf2ae25684f5f869c0d958c66021a5388a3fb1a38aa374b233'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

