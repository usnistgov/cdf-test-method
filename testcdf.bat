@echo off
@chcp 65001 > nul
setlocal

IF NOT "%2"=="-silent" (
ECHO NIST Voting 🗳️  Program - Common Data Format Test Method
ECHO Version 1.1.0 using...
)
where java >nul 2>nul
if %errorlevel%==1 (
    @echo Cannot find Java. Check path or install required version.
)

set MORGANADIR=%~dp0

REM All related jars are expected to be in $MORGANA_LIB. For externals jars: Add them to $CLASSPATH
set PROG_PATH="%MORGANADIR%MorganaXProc-IIIse.jar"
set LIB_PATH="%MORGANADIR%libraries/*"
set XERCES_PATH="%MORGANADIR%lib/xercesImpl.jar"
REM must put Xerces first in classpath
set CLASSPATH="%XERCES_PATH%;%LIB_PATH%;%PROG_PATH%"

REM Settings for JAVA_AGENT: Only for Java 8 we have to use -javaagent.
@for /f tokens^=2-5^ delims^=.-_^" %%j in ('java -fullversion 2^>^&1') do set "JAVA_VERSION=%%j%%k"

set JAVA_AGENT=
if %JAVA_VERSION% EQU 18 (set JAVA_AGENT="-javaagent:%MORGANADIR%libraries/quasar-core-0.7.9.jar")

java %JAVA_AGENT% -cp %CLASSPATH% com.xml_project.morganaxproc3.XProcEngine -config="%~dp0/config/morgana.xml" %*