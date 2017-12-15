import-module au

$releases = 'https://github.com/0xd4d/dnSpy/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url32   = $download_page.links | ? href -match 'dnSpy.zip$' | % href | select -First 1

    @{
        URL32   = 'https://github.com' + $url32
    }
}

update
