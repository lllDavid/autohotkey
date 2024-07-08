^!w::
 query := "Deutschland"
 Send, ^c
 request := "http://de.wikipedia.org/w/index.php?title="
		  . "Spezial%3ASuche&search=" . query

 Run, % request
Return