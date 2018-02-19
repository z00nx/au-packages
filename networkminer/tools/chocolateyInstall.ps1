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

$packageName    = 'networkminer'
$url            = 'https://www.netresec.com/?download=NetworkMiner'
$checksum32     = '971ea40fd1882a720d72e06c8105bf16fe437d1206527c5f9e00efc9be789345'
$specificFolder = 'NetworkMiner_2-2'

$packageArgs = @{
  packageName    = $packageName
  url            = $url
  checksum       = $checksum32
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  specificFolder = $specificFolder
}

Install-ChocolateyZipPackage @packageArgs

Install-CommonProgramsShortcut -Path 'NetworkMiner' -File 'NetworkMiner.exe'
