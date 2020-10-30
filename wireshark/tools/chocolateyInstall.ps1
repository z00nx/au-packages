$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.0.exe'
  checksum               = '638d59e9bebe7289ebee6e493051304ccc5bc22f8f4d9800ff8bdb9966c52ed8'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.0.exe'
  checksum64             = '32113e083409de888468e0bfe74ba98e6d618f9685a56a06f15b0506fdf4e462'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

