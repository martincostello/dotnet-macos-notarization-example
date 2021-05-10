#! /usr/bin/pwsh

dotnet publish ./src/HelloWorld/HelloWorld.csproj --output ./artifacts --configuration Release --runtime osx-x64
