#RequireAdmin
If UBound(ProcessList(@ScriptName)) > 2 Then Exit
#Region Default Apps
If Not FileExists('C:\ProgramData\Layouts') Then
	DirCreate('C:\ProgramData\Layouts')
EndIf
FileInstall('defaultApps.xml', 'C:\ProgramData\Layouts\defaultApps.xml', 1)
;FileInstall('DefaultLayouts.xml', 'c:\scripts\defaultApps.xml',1)

RegWrite('HKLM64\SOFTWARE\Policies\Microsoft\Windows\System', 'DefaultAssociationsConfiguration', 'REG_SZ', 'C:\ProgramData\Layouts\defaultApps.xml') ; set the file for default app association
RegWrite('HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\System', 'DefaultAssociationsConfiguration', 'REG_SZ', 'C:\ProgramData\Layouts\defaultApps.xml') ; set the file for default app association
#EndRegion Default Apps
