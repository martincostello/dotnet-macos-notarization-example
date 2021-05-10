#! /usr/bin/pwsh

dotnet publish ./src/HelloWorld/HelloWorld.csproj --output ./artifacts/app --configuration Release --runtime osx-x64

if (Test-Path -Path ./artifacts/HelloWorld.app) {
    Remove-Item ./artifacts/HelloWorld.app -Recurse -Force | Out-Null
}

New-Item -Path ./artifacts -Name HelloWorld.app -ItemType "Directory" | Out-Null
New-Item -Path ./artifacts/HelloWorld.app -Name Contents -ItemType "Directory" | Out-Null
New-Item -Path ./artifacts/HelloWorld.app/Contents -Name Resources -ItemType "Directory" | Out-Null
Copy-Item -Path ./artifacts/app -Destination ./artifacts/HelloWorld.app/Contents/MacOS -Recurse
Copy-Item -Path ./src/HelloWorld/Info.plist -Destination ./artifacts/HelloWorld.app/Contents
