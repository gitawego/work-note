# Define the GitHub repository and API endpoint
$repoOwner = "microsoft"
$repoName = "winget-cli"
$apiEndpoint = "https://api.github.com/repos/$repoOwner/$repoName/releases"
$global:VERSION = ""

Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms

# Use the GitHub REST API to get a list of releases for the repository
$releases = Invoke-RestMethod -Uri $apiEndpoint

# Sort the releases in descending order by release date
$releases = $releases | Sort-Object -Property published_at -Descending


# Create a Windows Forms ComboBox object for the dropdown select list
$comboBox = New-Object System.Windows.Forms.ComboBox
$comboBox.Location = New-Object System.Drawing.Point(10, 10)
$comboBox.Size = New-Object System.Drawing.Size(250, 30)

# Add each release version to the ComboBox object
foreach ($release in $releases) {
  $versionMatch = [regex]::Match($release.name, "\d+(\.\d+)+(?:-[\w\d]+)?")
  if ($versionMatch.Success) {
    $versionNumber = $versionMatch.Value
    $comboBox.Items.Add($versionNumber)
  }
}

# Select the latest version number by default
$comboBox.SelectedIndex = 0

# Create a Windows Forms Form object to display the ComboBox object and confirm button
$form = New-Object System.Windows.Forms.Form
$form.Text = "Select a version:"
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedSingle"
$form.AutoSize = $true
$form.AutoSizeMode = "GrowAndShrink"
$form.Controls.Add($comboBox)

# Create a Confirm button
$confirmButton = New-Object System.Windows.Forms.Button
$confirmButton.Location = New-Object System.Drawing.Point(10, 50)
$confirmButton.Size = New-Object System.Drawing.Size(80, 30)
$confirmButton.Text = "Confirm"
$confirmButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $confirmButton
$form.Controls.Add($confirmButton)

# Handle the Confirm button click event
$confirmButton.Add_Click({
    $selectedVersion = $comboBox.SelectedItem.ToString()
    $selectedVersionString = [System.Windows.Forms.MessageBox]::Show("You selected version $selectedVersion, continue the installation ?", "Selected Version", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Question, [System.Windows.Forms.MessageBoxDefaultButton]::Button1, [System.Windows.Forms.MessageBoxOptions]::DefaultDesktopOnly)
    if ($selectedVersionString -eq [System.Windows.Forms.DialogResult]::Yes) {
      Write-Host "Selected version: $selectedVersion"
      $global:VERSION = $selectedVersion
    }
  })

# Display the Form object and wait for the user to select a version and click the Confirm button
$dialogResult = $form.ShowDialog()

echo "result : $dialogResult; version: $VERSION"

# If the user selected OK, display the selected version string
if ($dialogResult -ine [System.Windows.Forms.DialogResult]::OK) {
  # Version was already confirmed in the button click event
  Write-Host "User cancelled installation"
  [Environment]::Exit(1)
}


if ([string]::IsNullOrWhiteSpace($VERSION)) {
  Write-Host "No version defined"
  [Environment]::Exit(1)
}

Write-Host "going to install version: $VERSION"


$WINGET_PKG_NAME = "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
$WINGET_URL = "https://github.com/microsoft/winget-cli/releases/download/v${VERSION}/${WINGET_PKG_NAME}"
$FILE_PATH = "${pwd}\${WINGET_PKG_NAME}"
$FILE_ZIP_NAME = "${WINGET_PKG_NAME}.zip"
$EXTRACTED_FOLDER = "${pwd}\extracted_winget_tmp"
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

RDir -Path $EXTRACTED_FOLDER


[Environment]::SetEnvironmentVariable( "WINGET_HOME", $WINGET_TARGET_PATH, [System.EnvironmentVariableTarget]::User )

RemovePath -Path $WINGET_TARGET_PATH
AddPath -Path "%WINGET_HOME%"
