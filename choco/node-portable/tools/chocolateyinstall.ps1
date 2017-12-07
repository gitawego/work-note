$ErrorActionPreference = "Stop"

$nodeFolder = "node-v9.2.0-win-x64"
$packageName= 'node-portable'
$url        = "https://nodejs.org/dist/v9.2.0/${nodeFolder}.zip"

# Install node to its own directory, not in the chocolatey lib folder
# If requesting per user install use $env:APPDATA else $env:ProgramData
$nodePath = Join-Path $env:LocalAppData $packageName

$EnvVariableType = 'User'

$packageArgs = @{
 packageName   = $packageName
 unzipLocation = $nodePath
 url           = $url
 checksum      = '17e9173217ea442773e9fed15a14e4865329650e58eba271db2f68aaaf09ce1e'
 checksumType  = 'sha512'
}
Install-ChocolateyZipPackage @packageArgs



# If you don't install to the toolsDir Chocolatey won't create a shim
# This would avoid creating an node.exe shim in the $chocolateyRoot\bin folder that is in the path
#$files = get-childitem $nodePath -include *.exe -recurse

#foreach ($file in $files) {
#  #generate an ignore file
#  New-Item "$file.ignore" -type file -force | Out-Null
#}

# Could install per user variables if not running node as a service or other users
Install-ChocolateyEnvironmentVariable -VariableName "NODE_HOME" -VariableValue "$nodePath\$nodeFolder" -VariableType $EnvVariableType;


# Adding node_HOME to the path isn't required if you use the shim, it IS required if you don't use the shim (ie install outside of $toolsDir or ignore above)
# Having it on the PATH twice could be confusing even though it is the "same" file
Install-ChocolateyPath -PathToInstall "%NODE_HOME%" -PathType $EnvVariableType;
