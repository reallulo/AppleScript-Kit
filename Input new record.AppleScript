tell application "System Events"
	repeat
		-- make one new record
		set New_Record to text returned of (display dialog "Next Actions?" with title "Append New Action Record" default answer "What's The Next Action?")
		if New_Record is not "" then exit repeat
	end repeat
end tell
