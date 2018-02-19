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
  url           = 'https://github.com/0xd4d/dnSpy/releases/download/v4.5.3/dnSpy.zip'
  checksum      = 'a78b53bdfd219e6259dbae212d6c8ea35a6a2cc931f1e144f0c8c3317935c735'
  checksumType  = 'sha256'
  unzipLocation = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs

# dnSpy currently has no installer executable, so install start menu
# (common programs) shortcuts
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy.exe'
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy-x86.exe'
