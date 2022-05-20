#! /usr/bin/env pwsh
dotnet publish `
       ./src/HelloWorld/HelloWorld.csproj `
       --output ./artifacts/publish `
       --configuration Release `
       --runtime osx-x64 `
       --no-self-contained
