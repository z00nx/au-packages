import-module au

$releases = 'https://www.winitor.com/binaries.html'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $download_link = $download_page.links | ? href -match '.*.zip$' | % href | select -First 1
    $url32         = 'https://www.winitor.com/' + $download_link.Substring(2)
    $download_page.Content -imatch 'Download pestudio (.*)<'
    $version       = $Matches[1]

    @{
        URL32   = $url32
        Version = $version
    }
}

update -NoCheckChocoVersion
