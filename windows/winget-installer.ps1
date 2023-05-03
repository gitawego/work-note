$VERSION = "1.4.10173"
$WINGET_PKG_NAME = "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
$WINGET_URL = "https://github.com/microsoft/winget-cli/releases/download/v${VERSION}/${WINGET_PKG_NAME}"
$FILE_PATH = "${pwd}\${WINGET_PKG_NAME}"
$FILE_ZIP_NAME = "${WINGET_PKG_NAME}.zip"
$EXTRACTED_FOLDER = "${pwd}\extracted"
$WINGET_FILE_NAME = "AppInstaller_x64.msix"
$WINGET_FILE_ZIP_NAME = "${WINGET_FILE_NAME}.zip"
$PROGRAMS_PATH = "$env:USERPROFILE\programs"
$BIN_PATH = "$env:USERPROFILE\bin"
$WINGET_TARGET_PATH = "$PROGRAMS_PATH\winget"

function MkdirP {
  param(
    [Parameter (Mandatory = $true)] [String]$Path
  )
  if (Test-Path $Path) {
    Write-Host "Folder ${Path} Exists"
  }
  else {
    New-Item -Path $Path -Type Directory
    Write-Output "Folder : $Path created"
  }
}

function RDir {
  param(
    [Parameter (Mandatory = $true)] [String]$Path
  )
  if (Test-Path $Path) {
    Write-Host "Folder ${Path} Exists"
    Remove-Item $Path -Recurse -Force
  }
  else {
    Write-Host "Folder ${Path} Doesn't Exists"
  }
}

function AddPath($Path) {
  $PathEnv = [Environment]::GetEnvironmentVariable("PATH", [System.EnvironmentVariableTarget]::User) + [IO.Path]::PathSeparator + $Path
  [Environment]::SetEnvironmentVariable( "Path", $PathEnv, [System.EnvironmentVariableTarget]::User )
}

function RemovePath($Path) {
  # Get it
  $oldPath = [System.Environment]::GetEnvironmentVariable(
    'PATH',
    [System.EnvironmentVariableTarget]::User
  )
  # Remove unwanted elements
  $oldPath = ($oldPath.Split(';') | Where-Object { $_ -ne $Path }) -join ';'
  # Set it
  [System.Environment]::SetEnvironmentVariable(
    'PATH',
    $oldPath,
    [System.EnvironmentVariableTarget]::User
  )
}

MkdirP -Path $BIN_PATH
MkdirP -Path $PROGRAMS_PATH



$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($WINGET_URL, $FILE_PATH)

RDir -Path $EXTRACTED_FOLDER


if (Test-Path $FILE_ZIP_NAME) {
  Write-Host "File ${FILE_ZIP_NAME} Exists"
  Remove-Item $FILE_ZIP_NAME -Force
}
else {
  Write-Host "File ${FILE_ZIP_NAME} Doesn't Exists"
}

Rename-Item -Path $FILE_PATH -NewName $FILE_ZIP_NAME

# Invoke-WebRequest -Uri $WINGET_URL -OutFile $pwd
Expand-Archive $FILE_ZIP_NAME -DestinationPath $EXTRACTED_FOLDER

Remove-Item $FILE_ZIP_NAME -Force

Rename-Item -Path $EXTRACTED_FOLDER\$WINGET_FILE_NAME -NewName $WINGET_FILE_ZIP_NAME

RDir -Path $WINGET_TARGET_PATH

Expand-Archive $EXTRACTED_FOLDER\$WINGET_FILE_ZIP_NAME -DestinationPath $WINGET_TARGET_PATH

# New-Item -ItemType Junction -Target "$WINGET_TARGET_PATH\winget.exe" -Path "$BIN_PATH\winget.exe"

Write-Output "
=======================================
Winget is installed, please add $WINGET_TARGET_PATH in your PATH
=======================================
"
# RemovePath -Path $BIN_PATH
# AddPath -Path $BIN_PATH
