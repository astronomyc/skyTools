# Set Windows console properties
$Host.UI.RawUI.WindowTitle = "Sky Tools"
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Blue"

# Function to show menu
function Show-Menu {
    param (
        [string[]]$Options,
        [int]$SelectedIndex
    )

    Clear-Host
    Write-Host "Selecciona una opcion:"

    for ($i = 0; $i -lt $Options.Length; $i++) {
        if ($i -eq $SelectedIndex) {
            Write-Host ("-> " + $Options[$i]) -ForegroundColor Green
        }
        else {
            Write-Host "  " $Options[$i]
        }
    }
}

# Main menu options
$mainOptions = @("Instaladores", "Activador")
$selectedIndex = 0

# Loop for main menu
while ($true) {
    Show-Menu -Options $mainOptions -SelectedIndex $selectedIndex
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode

    if ($key -eq 38) {
        $selectedIndex = [Math]::Max(0, $selectedIndex - 1)
    }
    elseif ($key -eq 40) {
        $selectedIndex = [Math]::Min($mainOptions.Length - 1, $selectedIndex + 1)
    }
    elseif ($key -eq 13) {
        $selectedOption = $mainOptions[$selectedIndex]

        switch ($selectedOption) {
            "Instaladores" {
                # Submenu options for installers
                $installerOptions = @("Chrome", "AnyDesk", "7-zip", "Adobe Acrobat Reader")
                $installerIndex = 0

                # Loop for installer submenu
                while ($true) {
                    Show-Menu -Options $installerOptions -SelectedIndex $installerIndex
                    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode

                    if ($key -eq 38) {
                        $installerIndex = [Math]::Max(0, $installerIndex - 1)
                    }
                    elseif ($key -eq 40) {
                        $installerIndex = [Math]::Min($installerOptions.Length - 1, $installerIndex + 1)
                    }
                    elseif ($key -eq 13) {
                        $selectedInstaller = $installerOptions[$installerIndex]
                        break
                    }
                }

                # match selected option
                switch ($selectedInstaller) {
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
                    "Adobe Acrobat Reader" {
                        (New-Object System.Net.WebClient).DownloadFile('https://admdownload.adobe.com/rdcm/installers/live/readerdc64_a_crd_install.exe', "$env:TEMP\AcroRDR.exe")

                        & "$env:TEMP\AcroRDR.exe"

                        $Process2Monitor = "AcroRDR"
                        Do {
                            $ProcessesFound = Get-Process | Where-Object { $Process2Monitor -contains $_.Name } | Select-Object -ExpandProperty Name
                            If ($ProcessesFound) {
                                "Todavia en ejecucion: $($ProcessesFound -join ', ')" | Write-Host
                                Start-Sleep -Seconds 2
                            }
                            else {
                                Remove-Item "$env:TEMP\AcroRDR.exe" -ErrorAction SilentlyContinue -Verbose
                            }
                        } Until (!$ProcessesFound)
                    }
                }
            }
            "Activador" {
                Invoke-RestMethod https://massgrave.dev/get | Invoke-Expression
            }
        }
    }
}