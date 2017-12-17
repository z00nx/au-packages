function Install-CommonProgramsShortcut($file, $path='')
{
	if (!$file)
	{
		Write-Error "Unable to install common programs shortcut, no file provided"
		return
	}

	$commonPrograms = [Environment]::GetFolderPath([Environment+SpecialFolder]::Programs)
	if (!$commonPrograms)
	{
		Write-Error "Unable to install common programs shortcut, could not get Programs path"
		return
	}

	$fileLnk = [IO.Path]::GetFileNameWithoutExtension($file) + '.lnk'
	$targetPath = Join-Path -Path "$unzipLocation" -ChildPath "$file"
	$shortcutPath = Join-Path -Path "$commonPrograms" -ChildPath "$path" `
	            | Join-Path -ChildPath "$fileLnk"

	# Create shortcut directory if it doesn't exist
	$shortcutDir = [IO.Path]::GetDirectoryName($shortcutPath)
	if (!(Test-Path -Path "$shortcutDir"))
	{
		New-Item -ItemType "directory" -Path "$shortcutDir"
	}

	Install-ChocolateyShortcut -ShortcutFilePath "$shortcutPath" `
	                           -TargetPath "$targetPath"
}

$packageArgs = @{
  packageName   = 'dnspy'
  url           = 'https://github.com/0xd4d/dnSpy/releases/download/v4.5.1/dnSpy.zip'
  checksum      = 'ca2c72fe1dbcd957a7db58a2382e1a8aa750dc6d88edb5ff82dd27a8ee6c3ade'
  checksumType  = 'sha256'
  unzipLocation = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs

# dnSpy currently has no installer executable, so install start menu
# (common programs) shortcuts
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy.exe'
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy-x86.exe'
