# Description: This script has Tools of Sky


# Set Windows console properties
$Host.UI.RawUI.WindowTitle = "Sky Tools"
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Blue"

# Menu Tools
function Show-Menu {
    Clear-Host
    Write-Host "Selecciona una opcion:"

    for ($i = 0; $i -lt $options.Length; $i++) {
        if ($i -eq $selectedIndex) {
            Write-Host ("-> " + $options[$i]) -ForegroundColor Green
        }
        else {
            Write-Host "  " $options[$i]
        }
    }
}

$options = @("Instaladores", "Activador")
$selectedIndex = 0

Show-Menu

while ($true) {
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
    if ($key -eq 38) {
        $selectedIndex = [Math]::Max(0, $selectedIndex - 1)
    }
    elseif ($key -eq 40) {
        $selectedIndex = [Math]::Min($options.Length - 1, $selectedIndex + 1)
    }
    elseif ($key -eq 13) {
        $selectedOption = $options[$selectedIndex]
        break
    }
    Show-Menu
}





# match selected option
switch ($selectedOption) {
    "Instaladores" {
        # Menu Instaladores
        function Show-Menu {
            Clear-Host
            Write-Host "Que desea instalar:"

            for ($i = 0; $i -lt $options.Length; $i++) {
                if ($i -eq $selectedIndex) {
                    Write-Host ("-> " + $options[$i]) -ForegroundColor Green
                }
                else {
                    Write-Host "  " $options[$i]
                }
            }
        }

        $options = @("Chrome", "AnyDesk", "7-zip")
        $selectedIndex = 0

        Show-Menu

        while ($true) {
            $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode
            if ($key -eq 38) {
                $selectedIndex = [Math]::Max(0, $selectedIndex - 1)
            }
            elseif ($key -eq 40) {
                $selectedIndex = [Math]::Min($options.Length - 1, $selectedIndex + 1)
            }
            elseif ($key -eq 13) {
                $selectedOption = $options[$selectedIndex]
                break
            }
            Show-Menu
        }

        # match selected option
        switch ($selectedOption) {
            "Chrome" {
                (New-Object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$env:TEMP\ChromeInstaller.exe")

                & "$env:TEMP\ChromeInstaller.exe" /install

                $Process2Monitor = "ChromeInstaller"
                Do {
                    $ProcessesFound = Get-Process | Where-Object { $Process2Monitor -contains $_.Name } | Select-Object -ExpandProperty Name
                    If ($ProcessesFound) {
                        "Todavia en ejecucion: $($ProcessesFound -join ', ')" | Write-Host
                        Start-Sleep -Seconds 2
                    }
                    else {
                        Remove-Item "$env:TEMP\ChromeInstaller.exe" -ErrorAction SilentlyContinue -Verbose
                    }
                } Until (!$ProcessesFound)
            }
            "AnyDesk" {
                (New-Object System.Net.WebClient).DownloadFile('https://download.anydesk.com/AnyDesk.exe', "$env:TEMP\AnyDesk.exe")

                & "$env:TEMP\AnyDesk.exe" /install

                $Process2Monitor = "AnyDeskInstaller"
                Do {
                    $ProcessesFound = Get-Process | Where-Object { $Process2Monitor -contains $_.Name } | Select-Object -ExpandProperty Name
                    If ($ProcessesFound) {
                        "Todavia en ejecucion: $($ProcessesFound -join ', ')" | Write-Host
                        Start-Sleep -Seconds 2
                    }
                    else {
                        Remove-Item "$env:TEMP\AnyDesk.exe" -ErrorAction SilentlyContinue -Verbose
                    }
                } Until (!$ProcessesFound)
            }
            "7-zip" {
                (New-Object System.Net.WebClient).DownloadFile('https://www.7-zip.org/a/7z2301-x64.exe', "$env:TEMP\7z2301-x64.exe")

                & "$env:TEMP\7z2301-x64.exe"

                $Process2Monitor = "7z2301-x64"
                Do {
                    $ProcessesFound = Get-Process | Where-Object { $Process2Monitor -contains $_.Name } | Select-Object -ExpandProperty Name
                    If ($ProcessesFound) {
                        "Todavia en ejecucion: $($ProcessesFound -join ', ')" | Write-Host
                        Start-Sleep -Seconds 2
                    }
                    else {
                        Remove-Item "$env:TEMP\7z2301-x64.exe" -ErrorAction SilentlyContinue -Verbose
                    }
                } Until (!$ProcessesFound)
            }
        }

    }
    "Activador" {
        irm https://massgrave.dev/get | iex
    }
}