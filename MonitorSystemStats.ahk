^!c::
    ; Path to the PowerShell script
    PowerShellScript := "autohotkey\GetSystemInfo.ps1"
    TempFile := A_Temp "\system_info.txt"

    ; Run the PowerShell script
    RunWait, %ComSpec% /c powershell.exe -File "%PowerShellScript%", , Hide

    ; Read the output from the file
    FileRead, OutputVar, %TempFile%

    ; Check if OutputVar is empty and display it
    if (OutputVar = "")
    {
        MsgBox, Failed to retrieve system information.
    }
    else
    {
        ; Display the system information in a message box
        MsgBox, %OutputVar%
    }

    ; Clean up the temporary file
    FileDelete, %TempFile%
return

