#Persistent

^!w::
    Run, firefox.exe "https://www.firefox.com" 
    WinWaitActive, ahk_exe firefox.exe 

    Sleep, 3000
	Send, ^l 
    Sleep 1000
	Send, ^+P::
    Sleep, 100
    Send, ddmbot.de
    Sleep 1000
    Send, {Enter}					
    Sleep, 1000
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, {tab}
    Send, Wie viele Buchstaben hat Hallo und warum sind es 4 ???
    Sleep, 1000
    Send, {Enter}

	Run, firefox.exe "https://c.tenor.com/naZtOdwB19UAAAAC/tenor.gif"
	Sleep 1000
	Send, ^+
	Sleep 1000
	Send, ^+
	Sleep 1000
	Send, ^+ 
	Sleep 1000
    WinWaitActive, ahk_exe firefox.exe 


