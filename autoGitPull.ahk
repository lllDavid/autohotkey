#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir, C:\path\to\workspace  ; Change to your actual workspace path

; Loop through each folder in the workspace directory
Loop, Files, C:\path\to\workspace\*.*, D  ; D specifies directories only
{
    ; Check if the folder contains a .git directory
    if FileExist(A_LoopFileFullPath . "\.git")
    {
        ; Run git pull in the folder
        RunWait, %ComSpec% /c "cd /d %A_LoopFileFullPath% && git pull origin main", , Hide
    }
}

MsgBox, Finished pulling all repositories
