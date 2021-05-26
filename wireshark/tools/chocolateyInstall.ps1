$ErrorActionPreference = 'Stop'

$packageName = 'WireShark'

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = 'https://1.na.dl.wireshark.org/win32/Wireshark-win32-3.4.5.exe'
  checksum               = 'bc46bdc14dac4c67033bc5ad5590e4b221d5724ba28569b9134c13528fa37fed'
  checksumType           = 'sha256'
  url64                  = 'https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.4.5.exe'
  checksum64             = 'e6a7f8b48221b642b8b0911dd1519d3436a5a90e99525e80f1764bf4938b35e5'
  checksumType64         = 'sha256'
  silentArgs             = '/S /quicklaunchicon=no'
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs

