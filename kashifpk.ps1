# ==============================================================================
#   Kashif PK IDM Activator - v1.0.0
#   Author  : Kashif PK
#   Usage   : irm https://raw.githubusercontent.com/Kashif-PK-IDM-Activator/Kashif-PK-IDM-Activator/refs/heads/main/kashifpk.ps1 | iex
# ==============================================================================

# ---- Force Admin ----
function Test-Admin {
    $currentUser = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
    return $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

if (-not (Test-Admin)) {
    Write-Host ""
    Write-Host "  [!] Requesting Administrator privileges..." -ForegroundColor Yellow
    Start-Sleep -Milliseconds 800
    $psExe = (Get-Process -Id $PID).Path
    $scriptPath = $MyInvocation.MyCommand.Path
    if ($scriptPath) {
        Start-Process $psExe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
    } else {
        Start-Process $psExe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"irm https://raw.githubusercontent.com/Kashif-PK-IDM-Activator/Kashif-PK-IDM-Activator/refs/heads/main/kashifpk.ps1 | iex`"" -Verb RunAs
    }
    exit
}

# ---- Console Setup ----
$Host.UI.RawUI.WindowTitle = "Kashif PK IDM Activator v1.0.0"
try { $Host.UI.RawUI.WindowSize  = New-Object System.Management.Automation.Host.Size(100, 40) } catch {}
try { $Host.UI.RawUI.BufferSize  = New-Object System.Management.Automation.Host.Size(100, 9999) } catch {}
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# ---- Color Helper ----
function Write-Color {
    param([string]$Text, [string]$Color = "White", [switch]$NoNewline)
    if ($NoNewline) { Write-Host $Text -ForegroundColor $Color -NoNewline }
    else            { Write-Host $Text -ForegroundColor $Color }
}

# ---- Banner ----
function Show-Banner {
    Clear-Host
    Write-Color ""
    Write-Color "  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░" "DarkGray"
    Write-Color "  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒" "DarkCyan"
    Write-Color "  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓" "Cyan"
    Write-Color ""
    Write-Color "  ██╗  ██╗ █████╗ ███████╗██╗  ██╗██╗███████╗   ██████╗ ██╗  ██╗" "Green"
    Write-Color "  ██║ ██╔╝██╔══██╗██╔════╝██║  ██║██║██╔════╝   ██╔══██╗██║ ██╔╝" "Green"
    Write-Color "  █████╔╝ ███████║███████╗███████║██║█████╗     ██████╔╝█████╔╝ " "Cyan"
    Write-Color "  ██╔═██╗ ██╔══██║╚════██║██╔══██║██║██╔══╝     ██╔═══╝ ██╔═██╗ " "Cyan"
    Write-Color "  ██║  ██╗██║  ██║███████║██║  ██║██║██║        ██║     ██║  ██╗" "Green"
    Write-Color "  ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝     ╚═╝  ╚═╝" "Green"
    Write-Color ""
    Write-Color "  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓" "Cyan"
    Write-Color "  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒" "DarkCyan"
    Write-Color ""
    Write-Color "        [ IDM ACTIVATOR ]  ░▒▓█  v1.0.0  █▓▒░  [ BY KASHIF PK ]" "Yellow"
    Write-Color ""
    Write-Color "  ░▒▓ SYSTEM   : Internet Download Manager Activator & Cleaner ▓▒░" "DarkCyan"
    Write-Color "  ░▒▓ AUTHOR   : Kashif PK                                     ▓▒░" "DarkCyan"
    Write-Color "  ░▒▓ STATUS   : ONLINE >> READY                                ▓▒░" "DarkCyan"
    Write-Color ""
    Write-Color "  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒" "DarkCyan"
    Write-Color "  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░" "DarkGray"
    Write-Color ""
}

# ---- Internet Check ----
function Test-Internet {
    Write-Color "  Checking internet connection..." "Cyan"
    try {
        $ping = Test-Connection -ComputerName "google.com" -Count 1 -Quiet -ErrorAction Stop
        if ($ping) {
            Write-Color "  [OK] Internet connection active." "Green"
            return $true
        }
    } catch {}
    Write-Color "  [!] No internet connection. Please check your network." "Red"
    Read-Host "  Press ENTER to continue"
    return $false
}

# ---- Get Latest IDM Version ----
function Get-LatestIDMVersion {
    Write-Color "  Fetching latest IDM version from official site..." "Cyan"
    try {
        $html = Invoke-WebRequest -Uri "https://www.internetdownloadmanager.com/news.html" -UseBasicParsing -ErrorAction Stop
        if ($html.Content -match "What's new in version ([\d\.]+ Build \d+)") {
            $ver = $matches[1]
            Write-Color "  [OK] Latest IDM Version: $ver" "Green"
            return $ver
        }
    } catch {}
    Write-Color "  [!] Could not fetch latest version." "Yellow"
    return "Unknown"
}

# ---- Get Installed IDM Version ----
function Get-InstalledIDMVersion {
    Write-Color "  Checking installed IDM version..." "Cyan"
    $ver = $null
    try { $ver = (Get-ItemProperty "HKCU:\Software\DownloadManager" -Name "idmvers" -ErrorAction Stop).idmvers } catch {}
    if (-not $ver) {
        try { $ver = (Get-ItemProperty "HKLM:\SOFTWARE\Internet Download Manager" -Name "Version" -ErrorAction Stop).Version } catch {}
    }
    if ($ver) {
        $ver = $ver -replace "v","" -replace "Full","" -replace " ",""
        $ver = $ver -replace "b"," Build "
        Write-Color "  [OK] Installed IDM Version: $ver" "Green"
        return $ver
    }
    Write-Color "  [!] IDM is not installed on this system." "Red"
    return $null
}

# ---- Get IDM Install Directory ----
function Get-IDMInstallDir {
    try {
        $exePath = (Get-ItemProperty "HKCU:\SOFTWARE\DownloadManager" -Name "ExePath" -ErrorAction Stop).ExePath
        return [System.IO.Path]::GetDirectoryName($exePath) + "\"
    } catch {}
    return $null
}

# ---- Download Source Files ----
function Get-SourceFiles {
    param([string]$TempDir)

    $urls = @(
        "https://cdn.coporton.com/download/IDM-Activation-Script-main.zip",
        "https://github.com/Coporton/IDM-Activation-Script/releases/download/Latest/IDM-Activation-Script-main.zip",
        "https://codeload.github.com/Coporton/IDM-Activation-Script/zip/refs/heads/main"
    )

    $zipPath = "$TempDir\source.zip"

    Write-Color ""
    Write-Color "  ░▒▓ Kashif PK IDM Activator - Downloading required files..." "Cyan"
    Write-Color ""

    $attempt = 1
    foreach ($url in $urls) {
        Write-Color "  [>>] Connecting to server $attempt of $($urls.Count)..." "Yellow"
        try {
            $wc = New-Object System.Net.WebClient
            $wc.DownloadFile($url, $zipPath)
            Write-Color "  [OK] Kashif PK IDM Activator - Download successful!" "Green"

            Write-Color "  [>>] Extracting activation files..." "Cyan"
            Expand-Archive -Path $zipPath -DestinationPath $TempDir -Force
            Write-Color "  [OK] Files ready." "Green"

            $srcDir = "$TempDir\IDM-Activation-Script-main\src"
            return $srcDir
        } catch {
            Write-Color "  [!] Server $attempt unavailable. Trying next..." "Red"
        }
        $attempt++
    }

    Write-Color "  [ERROR] Kashif PK IDM Activator - Could not download files." "Red"
    return $null
}

# ---- Activate IDM ----
function Invoke-Activate {
    param([string]$SrcDir)

    $installDir = Get-IDMInstallDir
    if (-not $installDir) {
        Write-Color ""
        Write-Color "  [!] IDM installation directory not found." "Red"
        Write-Color "  Please install IDM first and try again." "Yellow"
        Read-Host "  Press ENTER to go back"
        return
    }

    $dataFile     = "$SrcDir\data.bin"
    $dataHlpFile  = "$SrcDir\dataHlp.bin"
    $registryFile = "$SrcDir\registry.bin"

    foreach ($f in @($dataFile, $dataHlpFile, $registryFile)) {
        if (-not (Test-Path $f)) {
            Write-Color "  [!] Missing required file: $(Split-Path $f -Leaf)" "Red"
            Read-Host "  Press ENTER to go back"
            return
        }
    }

    Write-Color ""
    Write-Color "  Stopping IDM process..." "Cyan"
    Stop-Process -Name "IDMan" -Force -ErrorAction SilentlyContinue
    Start-Sleep -Milliseconds 800

    Write-Color "  Applying registry patch..." "Cyan"
    Start-Process "regedit.exe" -ArgumentList "/s `"$registryFile`"" -Wait

    Write-Color "  Replacing IDM core files..." "Cyan"
    Copy-Item -Path $dataFile    -Destination "${installDir}IDMan.exe"    -Force
    Copy-Item -Path $dataHlpFile -Destination "${installDir}IDMGrHlp.exe" -Force

    Write-Color ""
    Write-Color "  Enter your registration details:" "Cyan"
    Write-Color "  (Press ENTER to use default: Kashif PK)" "Yellow"
    Write-Color ""
    $fname = Read-Host "   First Name"
    $lname = Read-Host "   Last Name "

    if ([string]::IsNullOrWhiteSpace($fname)) { $fname = "Kashif" }
    if ([string]::IsNullOrWhiteSpace($lname)) { $lname = "PK" }

    Set-ItemProperty -Path "HKCU:\SOFTWARE\DownloadManager" -Name "FName" -Value $fname -Force
    Set-ItemProperty -Path "HKCU:\SOFTWARE\DownloadManager" -Name "LName" -Value $lname -Force

    Write-Color ""
    Write-Color "  =============================================================" "Green"
    Write-Color "  [OK] Internet Download Manager Activated Successfully!" "Green"
    Write-Color "       Registered to: $fname $lname" "Green"
    Write-Color "  =============================================================" "Green"
    Write-Color ""
    Read-Host "  Press ENTER to go back"
}

# ---- Add Extensions ----
function Add-Extensions {
    param([string]$SrcDir)

    $extFile = "$SrcDir\extensions.bin"
    if (-not (Test-Path $extFile)) {
        Write-Color "  [!] extensions.bin not found." "Red"
        Read-Host "  Press ENTER to go back"
        return
    }

    Write-Color "  Adding extra FileTypes extensions..." "Cyan"
    Start-Process "regedit.exe" -ArgumentList "/s `"$extFile`"" -Wait
    Write-Color "  [OK] Extra FileTypes Extensions added successfully." "Green"
    Write-Color ""
    Read-Host "  Press ENTER to go back"
}

# ---- Clean Registry ----
function Invoke-CleanRegistry {
    Write-Color ""
    Write-Color "  [!] WARNING: This will remove ALL IDM registry entries." "Red"
    Write-Color "  IDM will be de-registered and you will need to re-activate." "Yellow"
    Write-Color ""
    $confirm = Read-Host "  Are you sure? (Y/N)"
    if ($confirm -notmatch "^[Yy]$") {
        Write-Color "  Cancelled." "Yellow"
        Read-Host "  Press ENTER to go back"
        return
    }

    Write-Color ""
    Write-Color "  Stopping IDM..." "Cyan"
    Stop-Process -Name "IDMan" -Force -ErrorAction SilentlyContinue
    Start-Sleep -Milliseconds 800

    Write-Color "  Cleaning registry entries..." "Cyan"

    $keys = @(
        "HKLM:\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}",
        "HKLM:\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}",
        "HKLM:\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}",
        "HKLM:\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}",
        "HKLM:\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}",
        "HKLM:\Software\Classes\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}",
        "HKLM:\Software\Classes\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}",
        "HKLM:\Software\Classes\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}",
        "HKLM:\Software\Classes\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}",
        "HKLM:\Software\Classes\Wow6432Node\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}",
        "HKCU:\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}",
        "HKCU:\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}",
        "HKCU:\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}",
        "HKCU:\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}",
        "HKCU:\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}",
        "HKCU:\Software\Classes\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}",
        "HKCU:\Software\Classes\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}",
        "HKCU:\Software\Classes\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}",
        "HKCU:\Software\Classes\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}",
        "HKCU:\Software\Classes\Wow6432Node\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}",
        "HKLM:\Software\Internet Download Manager",
        "HKLM:\Software\Wow6432Node\Internet Download Manager",
        "HKCU:\Software\Download Manager"
    )

    foreach ($key in $keys) {
        Remove-Item -Path $key -Recurse -Force -ErrorAction SilentlyContinue
    }

    $licenseValues = @("FName","LName","Email","Serial","CheckUpdtVM","tvfrdt","LstCheck","scansk","idmvers")
    foreach ($val in $licenseValues) {
        try { Remove-ItemProperty -Path "HKCU:\Software\DownloadManager" -Name $val -Force -ErrorAction SilentlyContinue } catch {}
    }

    Write-Color ""
    Write-Color "  [OK] Registry cleanup completed successfully." "Green"
    Write-Color ""
    Read-Host "  Press ENTER to go back"
}

# ---- Download Latest IDM ----
function Open-IDMDownload {
    param([string]$DownloadURL)
    Write-Color ""
    Write-Color "  Opening browser to download the latest IDM..." "Green"
    if ($DownloadURL -and $DownloadURL -ne "") {
        Start-Process $DownloadURL
        Write-Color "  URL: $DownloadURL" "Yellow"
    } else {
        Start-Process "https://www.internetdownloadmanager.com/download.html"
    }
    Write-Color ""
    Read-Host "  Press ENTER to go back"
}

# ---- Build Download URL from version ----
function Get-IDMDownloadURL {
    param([string]$Version)
    if ($Version -match "(\d+)\.(\d+).*Build (\d+)") {
        $maj = $matches[1]; $min = $matches[2]; $bld = $matches[3]
        return "https://mirror2.internetdownloadmanager.com/idman${maj}${min}build${bld}.exe"
    }
    return "https://www.internetdownloadmanager.com/download.html"
}

# ==============================================================================
#   MAIN ENTRY POINT
# ==============================================================================

Show-Banner
if (-not (Test-Internet)) { exit 1 }

# Get version info
Write-Color ""
$latestVer    = Get-LatestIDMVersion
$installedVer = Get-InstalledIDMVersion
$downloadURL  = Get-IDMDownloadURL -Version $latestVer

Write-Color ""
if ($installedVer -and $latestVer -ne "Unknown") {
    Write-Color "  Installed : $installedVer" "White"
    Write-Color "  Latest    : $latestVer" "White"
}

# Pre-download source files once (reused across menu sessions)
$tempDir = "$env:TEMP\KashifPK-IDM-Activator"
if (-not (Test-Path $tempDir)) { New-Item -ItemType Directory -Path $tempDir | Out-Null }
$srcDir = $null

# ==============================================================================
#   MENU LOOP
# ==============================================================================
while ($true) {
    Show-Banner

    # Show version status in menu
    if ($installedVer) {
        Write-Color "  Installed : $installedVer" "White"
    } else {
        Write-Color "  Installed : Not Found" "Red"
    }
    if ($latestVer -and $latestVer -ne "Unknown") {
        Write-Color "  Latest    : $latestVer" "White"
    }
    Write-Color ""

    Write-Color "  =============================================================" "Cyan"
    Write-Color "  |                                                           |" "Cyan"
    Write-Color "  |   [1]  Download Latest IDM Version                       |" "Green"
    Write-Color "  |   [2]  Activate Internet Download Manager                |" "Green"
    Write-Color "  |   [3]  Add Extra FileTypes / Extensions                  |" "Green"
    Write-Color "  |   [4]  Do Everything  ( Activate + Extensions )          |" "Green"
    Write-Color "  |   [5]  Clean / Remove All IDM Registry Entries           |" "Red"
    Write-Color "  |   [6]  Exit                                               |" "Yellow"
    Write-Color "  |                                                           |" "Cyan"
    Write-Color "  =============================================================" "Cyan"
    Write-Color ""
    Write-Color "         Kashif PK IDM Activator v1.0.0  |  Author: Kashif PK" "Cyan"
    Write-Color ""

    $choice = Read-Host "   Choose an option (1-6)"

    switch ($choice.Trim()) {

        "1" {
            Show-Banner
            Open-IDMDownload -DownloadURL $downloadURL
        }

        "2" {
            Show-Banner
            if (-not $srcDir -or -not (Test-Path "$srcDir\data.bin")) {
                $srcDir = Get-SourceFiles -TempDir $tempDir
            }
            if ($srcDir) { Invoke-Activate -SrcDir $srcDir }
            else {
                Write-Color "  [!] Could not download activation files." "Red"
                Read-Host "  Press ENTER to go back"
            }
        }

        "3" {
            Show-Banner
            if (-not $srcDir -or -not (Test-Path "$srcDir\extensions.bin")) {
                $srcDir = Get-SourceFiles -TempDir $tempDir
            }
            if ($srcDir) { Add-Extensions -SrcDir $srcDir }
            else {
                Write-Color "  [!] Could not download extension files." "Red"
                Read-Host "  Press ENTER to go back"
            }
        }

        "4" {
            Show-Banner
            if (-not $srcDir -or -not (Test-Path "$srcDir\data.bin")) {
                $srcDir = Get-SourceFiles -TempDir $tempDir
            }
            if ($srcDir) {
                Invoke-Activate    -SrcDir $srcDir
                Show-Banner
                Add-Extensions     -SrcDir $srcDir
            } else {
                Write-Color "  [!] Could not download activation files." "Red"
                Read-Host "  Press ENTER to go back"
            }
        }

        "5" {
            Show-Banner
            Invoke-CleanRegistry
        }

        "6" {
            Write-Color ""
            Write-Color "  =============================================================" "Cyan"
            Write-Color "    Thank you for using Kashif PK IDM Activator!" "Green"
            Write-Color "    Have a great day  |  Author: Kashif PK" "Green"
            Write-Color "  =============================================================" "Cyan"
            Write-Color ""
            # Cleanup temp
            Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 2
            exit 0
        }

        default {
            Write-Color "  [!] Invalid option. Please enter 1 to 6." "Red"
            Start-Sleep -Seconds 1
        }
    }
}
