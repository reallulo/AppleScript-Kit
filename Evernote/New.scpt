
set note_name to "Key Word"

tell application "印象笔记"
	set theNote to (find notes ("intitle:\"" & note_name & "\""))
	set theNote to item 1 of theNote
	set noteWin to open note window with theNote
	activate noteWin
end tell
