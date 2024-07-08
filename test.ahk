#Persistent

^!w::

    Run, chrome.exe "https://www.google.com"  
    WinWaitActive, ahk_exe chrome.exe 

    Sleep, 3000
	
    Send, ^l  
    Sleep, 100
    Send, ddmbot.de
	Sleep 1000
 	Send, {Enter}
	Sleep 1000
	MouseMove, 600,600
	MouseClick, left
	Send, Wie viele Buchstaben hat Hallo und warum sind es 4 ???
	Sleep, 1000
	Send, {Enter}

