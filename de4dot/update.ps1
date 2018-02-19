import-module au

$releases = 'https://ci.appveyor.com/project/0xd4d/de4dot/build/artifacts'

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
    $projects = Invoke-WebRequest https://ci.appveyor.com/api/projects/0xd4d/de4dot
    $version = ($projects.Content | ConvertFrom-Json).build.version.replace('x', '0')
    $jobid = ($projects.Content | ConvertFrom-Json).build.jobs[0].jobId
    $artifacts = Invoke-WebRequest "https://ci.appveyor.com/api/buildjobs/$jobid/artifacts"
    $filename = ($artifacts.Content | ConvertFrom-Json).filename
    $url32   = "https://ci.appveyor.com/api/buildjobs/$jobid/artifacts/$filename"
    @{
        URL32   = $url32
        Version = $version
    }
}

update -NoCheckChocoVersion
