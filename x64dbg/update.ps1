import-module au

$releases = 'https://github.com/x64dbg/x64dbg/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksumType\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
    $url32   = $download_page.links | ? href -match 'snapshot.*.zip$' | % href | select -First 1
    $version = [regex]::match((Split-Path $url32 -Leaf), 'snapshot_(.*).zip').Groups[1].Value
    $version = $version.Replace('-', '').Replace('_','.')
    @{
        URL32   = 'https://github.com' + $url32
        Version = $version
    }
}

update -NoCheckChocoVersion
