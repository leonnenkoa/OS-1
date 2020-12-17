echo on
for /f "delims=" %%a in ('"wmic path Win32_OperatingSystem get CSDVersion,Version,BuildNumber /value|find "^=""') do set "%%a"
for /f "delims=" %%a in ('"wmic path Win32_ComputerSystem get Manufacturer, Model,TotalPhysicalMemory /value|find "^=""') do set "%%a"
for /f "delims=" %%a in ('"wmic path Win32_VideoController get VideoProcessor,CurrentHorizontalResolution,CurrentVerticalResolution /value|find "^=""') do set "%%a"
for /f "delims=" %%a in ('"wmic path Win32_SoundDevice get ProductName /value|find "^=""') do set "%%a"
for /f "delims=" %%a in ('"wmic path Win32_Processor get Name /value|find "^=""') do set "%%a"
 @echo Version Windows:			%Version% %CSDVersion% sborka %BuildNumber%
 @echo Mat Plata:				%Manufacturer%     %Model%
 @echo CPU:					%TotalPhysicalMemory% mb
 @echo Processor:				%Name%
 @echo Videokarta:				%VideoProcessor%
 @echo Razreshenie monitora:			%CurrentHorizontalResolution%x%CurrentVerticalResolution%
 @echo Sound:					%ProductName%
@pause

