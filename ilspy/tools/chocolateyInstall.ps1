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
  url           = 'https://github.com/icsharpcode/ILSpy/releases/download/v3.1-beta1/ILSpy_binaries_Net46_Win_3.1.0.3599-beta1.zip'
  checksum      = '3f486a9fb33252fb2d23461795df932f6927c1b9c3cba1f57fe8058c3e6105a3'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "ILSpy.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target

Install-BinFile -Name 'ILSpy.exe' -Path $target
