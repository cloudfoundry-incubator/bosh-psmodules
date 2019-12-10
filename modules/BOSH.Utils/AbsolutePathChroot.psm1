<#
.Synopsis
    Common Utils
.Description
    This cmdlet enables common utils for BOSH
#>

function AbsolutePathChroot-New-Item {
    param(
        $Path
    )
#    $otherArgs = @Args
    $optionalDriveLetterRegex = "(.:)?(.+)"
    $Path -replace $optionalDriveLetterRegex, '$2'
#    $pathWithoutDriveName=$Matches[2]
#        $path2="."+$pathWithoutDriveName
    $safePath=".\"
    $PathToPassThru = $pathWithoutDriveName
    write-error "$safePath$PathToPassThru"
    New-Item -Path "$safePath$PathToPassThru" @Args
}
