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
  url           = 'https://github.com/icsharpcode/ILSpy/releases/download/v3.1-rc/ILSpy_binaries.3.1.0.3645-rc.zip'
  checksum      = 'd4c9267a8df698112bc94a59bfffa740b3ceeb59ec8f6c70f818ecf0671c3bb5'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "ILSpy.exe"

$shortcut = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" + $packageName + ".lnk"
Install-ChocolateyShortcut -shortcutFilePath $shortcut -targetPath $target

Install-BinFile -Name 'ILSpy.exe' -Path $target
