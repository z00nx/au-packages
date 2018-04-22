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
  url           = 'https://github.com/0xd4d/dnSpy/releases/download/v5.0.0/dnSpy.zip'
  checksum      = '9ed9126983eb87e9f71d8fbad80aaecd822853fb5127bc378bc5bb2fc19bfef0'
  checksumType  = 'sha256'
  unzipLocation = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs

# dnSpy currently has no installer executable, so install start menu
# (common programs) shortcuts
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy.exe'
Install-CommonProgramsShortcut -Path 'dnSpy' -File 'dnSpy-x86.exe'
