$ErrorActionPreference = 'Stop';
$packageName = 'ilspy'

$toolsDir = ${Env:ProgramFiles(x86)}
if(-Not ($toolsDir)) {
  $toolsDir = ${Env:ProgramFiles}
}
$toolsDir = Join-Path $toolsDir $packageName

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/icsharpcode/ILSpy/releases/download/v3.0.1/ILSpy_binaries_Net46_Win_3.0.1.3459.zip'
  checksum      = '5aca34b25fa416cc76af3a98d663791d951fdd6455f2d8b4e9e4520a315e4346'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "ILSpy.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target

Install-BinFile -Name 'ILSpy.exe' -Path $target
