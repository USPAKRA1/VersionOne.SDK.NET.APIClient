mkdir ..\packages
call NuGetRestorePackagesOnly.bat VersionOne.SDK.APIClient.csproj %1
call NuGetUpdatePackages.bat packages.config
msbuild VersionOne.SDK.APIClient.csproj /p:V1BuildToolsPath=%1 /p:NuGetExePat=%1\NuGet.exe /p:RequireRestoreConsent=false /p:Configuration=Release /p:Platform=AnyCPU /p:Major=12 /p:Minor=2  /p:Revision=0 /p:AssemblyInformationalVersion="12.2.1.3588 Summer 2012" /p:AssemblyCopyright="Copyright 2012, VersionOne, Inc. Licensed under modified BSD." /p:CompanyName="VersionOne, Inc" /p:AssemblyProduct="VersionOne.SDK.APIClient" /p:AssemblyTitle="VersionOne SDK API Client" /p:AssemblyDescription="VersionOne SDK .NET API Client Release Build" /p:SignAssembly=%SIGN_ASSEMBLY% /p:AssemblyOriginatorKeyFile=%SIGNING_KEY