# brian9206/dotnet-framework-msbuild
MSBuild 14.0 with .Net Framework Developer Pack 4.5.2 and 4.6.2 build environment with WORKDIR and ENTRYPOINT.

## How to use?
Command as msbuild.exe parameter.

```powershell
docker run --rm `
    -v C:\path\to\your\project:C:\Project `
    brian9206/dotnet-framework-msbuild:latest `
    YourSolution.sln `
    /t:Build /p:Configuration=Release
```