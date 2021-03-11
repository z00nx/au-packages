$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.4.exe'
  checksum               = '673b677da839d3fe2840e5b0cf3fc243550c9c927d1ae2a933357da2c915e215'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.4.exe'
  checksum64             = '568d5b3f7dcca301d4f4069b72fd458cd6fb9562c4f06227ccb2a1804b260b26'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

