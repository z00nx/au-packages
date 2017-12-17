import-module au

$releases = 'https://www.wireshark.org/download.html'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url32   = $download_page.links | ? href -match 'Wireshark-win32.*.exe$' | % href | select -First 1
    $url64   = $download_page.links | ? href -match 'Wireshark-win64.*.exe$' | % href | select -First 1
    $version = (Split-Path $url32 -Leaf).Split('-')[2].Replace('.exe', '')

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

update -NoCheckChocoVersion
