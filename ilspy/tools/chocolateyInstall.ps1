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
  url           = 'https://github.com/icsharpcode/ILSpy/releases/download/v3.2-beta/ILSpy_binaries_3.2.0.3809-beta.zip'
  checksum      = 'c58697b06f047d92bcdaebd155737bd151affd2bf629c833529b5f0be8e3e068'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "ILSpy.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target

Install-BinFile -Name 'ILSpy.exe' -Path $target
