$DEFAULT_VERSION = "1.1.11"
$FILE_ZIP_NAME = "nvm-noinstall.zip"
$PROGRAMS_PATH = "$env:APPDATA\nvm"
$PROGRAM_SETTINGS_PATH = "$PROGRAMS_PATH\settings.txt"
$SYMLINK = "$env:ProgramFiles\nodejs"

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

# $VERSION = Read-Host -Prompt "Enter the version (default to $DEFAULT_VERSION)"
Add-Type -AssemblyName Microsoft.VisualBasic
$VERSION = [Microsoft.VisualBasic.Interaction]::InputBox("Nvm Version (default to $DEFAULT_VERSION):", 'VERSION', $DEFAULT_VERSION)


if ([string]::IsNullOrWhiteSpace($VERSION)) {
  Write-Host "User cancelled installation"
  [Environment]::Exit(1)
}

Write-Host "installing version ${VERSION}"

$NVM_URL = "https://github.com/coreybutler/nvm-windows/releases/download/${VERSION}/${FILE_ZIP_NAME}"

RDir -Path $PROGRAMS_PATH

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($NVM_URL, "$pwd\$FILE_ZIP_NAME")

Expand-Archive $FILE_ZIP_NAME -DestinationPath $PROGRAMS_PATH

New-Item -Path $PROGRAM_SETTINGS_PATH -ItemType File -Value "root: ${PROGRAMS_PATH}"
Add-Content -Path $PROGRAM_SETTINGS_PATH -Value "`r`npath: $SYMLINK"

[Environment]::SetEnvironmentVariable( "NVM_HOME", $PROGRAMS_PATH, [System.EnvironmentVariableTarget]::User )
[Environment]::SetEnvironmentVariable( "NVM_SYMLINK", $SYMLINK, [System.EnvironmentVariableTarget]::User )

RemovePath -Path $PROGRAMS_PATH
RemovePath -Path $SYMLINK
AddPath -Path "%NVM_HOME%"
AddPath -Path "%NVM_SYMLINK%"
