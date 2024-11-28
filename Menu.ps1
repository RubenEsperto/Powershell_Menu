<#
Programmer.....:Rúben Esperto
Date...........:26711/2024
Observations...:
#>

function Show-REPSMenu{
    [CmdletBinding()]
    param(
        [string]$Title,
        [string[]]$MenuOptions
    )

    $Separator = "*" * 47

    Clear-Host
    Write-Verbose "Preparing your menu"
    Write-Host "$Separator"
    Write-Host "$Title"
    Write-Host "$Separator"
    foreach($Option in $MenuOptions) {
       Write-Host "$Option" 
    }
    Write-Verbose -Message "The menu was shown"
}

function Start-REPSMenu{
    [CmdletBinding()]
    param()

    while($Option -ne "E"){
        Show-REPSMenu -Title "Main menu" -MenuOptions @(
            "1 - Show the date",
            "2 - Show the contents of the current directory",
            "E -  Exit"
        ) 
    
        $Option = Read-Host "Select a menu option"
    
        switch($Option) {
            '1'{
                Write-Host "Option 1"
                Start-Sleep -seconds 2
            }
            '2'{
                Write-Host "Option 2"
                Start-Sleep -seconds 2
            }
            'E'{
                Write-Host "Bye!"
            }
            default{
                Write-Host "Invalid option!"
                Start-Sleep -seconds 2
            }
        }
    } 
}

Start-REPSMenu -verbose