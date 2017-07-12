FROM microsoft/windowsservercore
MAINTAINER Brian Choi

ADD setup C:\setup

RUN cmd.exe /c start /wait C:\setup\BuildTools_Full.exe /Silent /Full
RUN cmd.exe /c start /wait C:\setup\NDP462-DevPack-KB3151934-ENU.exe /Silent /Full
RUN cmd.exe /c start /wait C:\setup\NDP452-KB2901951-x86-x64-DevPack.exe /q

RUN powershell -Command rm C:\setup -r -Force

WORKDIR C:\\Project
ENTRYPOINT ["C:\\Program Files (x86)\\MSBuild\\14.0\\Bin\\msbuild.exe"]