-- Calling a handler to determine the position of an item in a list

set theList to {"Sal", "Ben", "David", "Chris", "Jen", "Lizzie", "Maddie", "Lillie"}
getPositionOfItemInList("Maddie", theList)
--> Result: 7

on getPositionOfItemInList(theItem, theList)
    repeat with a from 1 to count of theList
        if item a of theList is theItem then return a
    end repeat
    return 0
end getPositionOfItemInList

-- Using cross-referencing to locate an item in a list based on the position of an item in another list

set theNames to {"Sal", "Ben", "David", "Chris", "Jen", "Lizzie", "Maddie", "Lillie"}
set theExtensions to {"x1111", "x2222", "x3333", "x4444", "x5555", "x6666", "x7777", "x8888"}}
set thePerson to choose from list theNames with prompt "Choose a person:"
if thePerson is false then error number -128
set theExtension to item (getPositionOfItemInList((thePerson as string), theNames)) of theExtensions
display dialog "The phone extension for " & thePerson & " is " & theExtension & "."



-- Determining Multiple Positions of an Item in a List
set theList to {"Sal", "Ben", "Jen", "David", "Chris", "Lizzie", "Maddie", "Jen", "Lillie"}
getPositionsOfItemInList("Jen", theList, false)
--> Result: {3, 8}

on getPositionsOfItemInList(theItem, theList, listFirstPositionOnly)
    set thePositions to {}
    repeat with a from 1 to length of theList
        if item a of theList is theItem then
            if listFirstPositionOnly = true then return a
            set end of thePositions to a
        end if
    end repeat
    if listFirstPositionOnly is true and thePositions = {} then return 0
    return thePositions
end getPositionsOfItemInList
