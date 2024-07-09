#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir, "C:\Users\David\Documents\Workspace"  ; Change to your actual workspace path

; Loop through each folder in the workspace directory
Loop, Files, "C:\Users\David\Documents\Workspace"*.*, D  ; D specifies directories only
{
    ; Check if the folder contains a .git directory
    if FileExist(A_LoopFileFullPath . "\.git")
    {
        ; Run git pull in the folder
        RunWait, %ComSpec% /c "cd /d %A_LoopFileFullPath% && git pull origin main", , Hide
    }
}

MsgBox, Finished pulling all repositories
