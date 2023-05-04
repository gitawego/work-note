# Define the GitHub repository and API endpoint
$repoOwner = "coreybutler"
$repoName = "nvm-windows"
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
$comboBox.Size = New-Object System.Drawing.Size(300, 30)

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
$form.Text = "Select a nvm version:"
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

Write-Host "result : $dialogResult; version: $VERSION"

# If the user didn't select OK, consider the action is cancelled
if ($dialogResult -ine [System.Windows.Forms.DialogResult]::OK) {
  Write-Host "User cancelled installation"
  [Environment]::Exit(1)
}


if ([string]::IsNullOrWhiteSpace($VERSION)) {
  Write-Host "No version defined"
  [Environment]::Exit(1)
}

Write-Host "going to install version: $VERSION"

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
RemovePath -Path "%NVM_HOME%"
RemovePath -Path "%NVM_SYMLINK%"
AddPath -Path "%NVM_HOME%"
AddPath -Path "%NVM_SYMLINK%"
