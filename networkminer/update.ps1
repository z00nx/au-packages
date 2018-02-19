import-module au

$releases = 'http://www.netresec.com/?page=NetworkMiner'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*\`$url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*\`$checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*\`$specificFolder\s*=\s*)('.*')" = "`$1'$($Latest.SpecificFolder)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    $url32   = 'https://www.netresec.com/?download=NetworkMiner'
    $download_page.Content -imatch 'nobr>NetworkMiner (.*)<'
    $version = $Matches[1]
    $specificFolder = "NetworkMiner_" + $version.replace('.', '-')
    @{
        URL32   = $url32
        Version = $version
        SpecificFolder = $specificFolder
    }
}

update
