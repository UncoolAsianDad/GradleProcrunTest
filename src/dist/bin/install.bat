call variables.bat

prunsrv.exe //IS//%SERVICE_NAME% ^
	--DisplayName="Gradle ProcRun" ^
	--Description="Gradle Procrun Tester" ^
	--Startup=auto ^
	--Install=%CD%\gradleProcTest.exe ^
	--Jvm=auto ^
	--Classpath=%CD%\gradleProcRun ^
	--StartMode=jvm ^
	--StartClass=%SERVICE_CLASS% ^
	--StartMethod=start ^
	--StartParams=start ^
	--StopMode=jvm ^
	--StopClass=%SERVICE_CLASS% ^
	--StopMethod=stop ^
	--StopParams=stop ^
	--StdOutput=auto ^
	--StdError=auto ^
	--LogPath=%CD%\log ^
	--LogLevel=Debug

