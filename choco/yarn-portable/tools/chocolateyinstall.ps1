$ErrorActionPreference = "Stop"
 
$packageName= 'yarn-portable'
$url        = "https://github.com/yarnpkg/yarn/releases/download/v1.3.2/yarn-v1.3.2.tar.gz"
$yarnFolder = "yarn-v1.3.2"

# Install yarn to its own directory, not in the chocolatey lib folder
# If requesting per user install use $env:APPDATA else $env:ProgramData
$yarnPath = Join-Path $env:LocalAppData $packageName
$yarnTmpPath = Join-Path $env:tmp $packageName

$EnvVariableType = 'User'
 
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $yarnTmpPath
  url           = $url
}
Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $yarnTmpPath -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $yarnPath
 

 
# If you don't install to the toolsDir Chocolatey won't create a shim
# This would avoid creating an yarn.exe shim in the $chocolateyRoot\bin folder that is in the path
#$files = get-childitem $yarnPath -include *.exe -recurse
 
#foreach ($file in $files) {
#  #generate an ignore file
#  New-Item "$file.ignore" -type file -force | Out-Null
#}
 
# Could install per user variables if not running node as a service or other users
Install-ChocolateyEnvironmentVariable -VariableName "YARN_HOME" -VariableValue "$yarnPath\$yarnFolder" -VariableType $EnvVariableType;

 
# Adding yarn_HOME to the path isn't required if you use the shim, it IS required if you don't use the shim (ie install outside of $toolsDir or ignore above)
# Having it on the PATH twice could be confusing even though it is the "same" file
Install-ChocolateyPath -PathToInstall "%YARN_HOME%\bin" -PathType $EnvVariableType;
