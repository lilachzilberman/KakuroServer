@echo off
for /f "delims=" %%a in ('cd') do @set GRADLE_USER_HOME=%%a
echo Building with Gradle...
gradlew build
echo Copying build output...
copy /y build\libs\ %DEPLOYMENT_TARGET%\webapps\
