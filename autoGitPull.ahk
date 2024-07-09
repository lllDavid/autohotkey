#NoEnv
#SingleInstance Force
SendMode Input

; Set the workspace directory
workspaceDir := "C:\Users\David\Documents\Workspace" ; Change this to your actual workspace path

; Function to run a command and get the output
RunCommand(command, outputVar)
{
    shell := ComObjCreate("WScript.Shell")
    exec := shell.Exec(ComSpec " /C " command)
    stdout := exec.StdOut
    while, !stdout.AtEndOfStream
        outputVar .= stdout.ReadAll()
}

; Loop through each subdirectory in the workspace directory
Loop, Files, %workspaceDir%\*.*, D
{
    gitDir := A_LoopFileFullPath . "\.git"
    if FileExist(gitDir)
    {
        ; Run git pull command
        RunCommand("cd /d " . A_LoopFileFullPath . " && git pull origin main", output)
        MsgBox, 0, Git Pull Output, % "Pulled from: " A_LoopFileFullPath "`nOutput: " output
    }
}

MsgBox, Finished pulling all repositories
