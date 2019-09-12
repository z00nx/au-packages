$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.0.4.exe'
  checksum               = 'dd5b1fc28fd14e8d916c138908c387cf73b7f45f5becec5ced8725c03c83be6c'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.0.4.exe'
  checksum64             = 'abe83ebcdf817bd5c97106670fe0e7e52b88c2b5978dfb66db10e7f780beb2e5'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

