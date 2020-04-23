$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'http://ubi.li/4vxt9'
  softwareName   = 'Uplay'
  checksum       = '755BD3CAE22270268C1E78DDA2FFF7D9E9D328599E4DAD2F3FBAC607F2EA8DFB'
  checksumType   = 'sha512'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
