tell application "Mail"
  set theMessages to selection
    if theMessages is not {} then -- check empty list
      set theEmail to extract address from sender of item 1 of theMessages
    end if
end tell
