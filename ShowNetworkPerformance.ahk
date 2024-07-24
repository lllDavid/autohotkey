; Define the target host for the ping test
pingTarget := "google.com"

; Define the command for the ping test
pingCmd := "ping " pingTarget

; Temporary file to capture the output
tempFile := A_Temp "\pingOutput.txt"

; Run the ping command and capture the output
RunWait, %ComSpec% /c %pingCmd% > "%tempFile%", , Hide

; Initialize a variable to hold the duration
pingDuration := ""

; Read the content of the temporary file
FileRead, pingOutput, %tempFile%

; Loop through each line of the output
Loop, parse, pingOutput, `n, `r
{
    ; Check if the line contains "Antwort von" (for German locale) or "Reply from" (for English locale)
    if (InStr(A_LoopField, "Antwort von") or InStr(A_LoopField, "Reply from"))
    {
        ; Extract the duration value using a regular expression
        if RegExMatch(A_LoopField, "Zeit=(\d+)ms", duration) or RegExMatch(A_LoopField, "time=(\d+)ms", duration)
        {
            ; Assign the duration value to the variable
            pingDuration := duration1 . " ms"
            break ; Exit the loop after finding the first match
        }
    }
}

; Clean up the temporary file
FileDelete, %tempFile%

; Display the first ping duration
MsgBox, First Ping Duration:`n%pingDuration%
