# PowerShell script showcasing variables, functions, error handling, and pipeline filters.
$ErrorActionPreference = "Stop"

function Get-NppProcessInfo {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string]$ProcessName = "notepad++"
    )

    process {
        try {
            Write-Verbose "Searching for running instances of $ProcessName..."
            $processes = Get-Process -Name $ProcessName -ErrorAction SilentlyContinue

            if ($processes) {
                foreach ($proc in $processes) {
                    [PSCustomObject]@{
                        Id        = $proc.Id
                        Name      = $proc.ProcessName
                        MemoryMB  = [math]::Round($proc.WorkingSet64 / 1MB, 2)
                        StartTime = $proc.StartTime
                    }
                }
            } else {
                Write-Warning "No process with name '$ProcessName' was found running."
            }
        }
        catch {
            Write-Error "An error occurred: $_"
        }
    }
}

# Run the function
Get-NppProcessInfo -ProcessName "notepad++" | Format-Table -AutoSize
