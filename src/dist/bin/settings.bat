set SERVICE_NAME=CanaryServer
 
REM Service log configuration
set PR_LOGPREFIX=%SERVICE_NAME%
REM set PR_LOGPATH=C:\logs
REM set PR_STDOUTPUT=C:\logs\stdout.txt
REM set PR_STDERROR=C:\logs\stderr.txt
REM set PR_LOGLEVEL=Error
 
REM Path to java installation
REM set PR_JVM=C:\Program Files (x86)\Java\jre1.8.0_60\bin\client\jvm.dll
REM set PR_CLASSPATH=C:\procrun-sample\canary.jar
 
REM Startup configuration
set PR_STARTUP=auto
set PR_STARTMODE=jvm
set PR_STARTCLASS=com.vandrico.canary.Engine
set PR_STARTMETHOD=start
 
REM Shutdown configuration
set PR_STOPMODE=jvm
set PR_STOPCLASS=com.vandrico.canary.Engine
set PR_STOPMETHOD=stop

 
REM Install service
prunsrv.exe //IS//%SERVICE_NAME%

pause