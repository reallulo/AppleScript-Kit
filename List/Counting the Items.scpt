-- Get the count of the items in a list

set theList to {"Apple Watch", "iMac", "iPhone", "MacBook Pro"}
length of theList
--> Result: 4

-- Counting the Occurrences of an Item in a List

set theList to {"Sal", "Jen", "Ben", "David", "Chris", "Jen"}
countInstancesOfItemInList(theList, "Jen")
--> Result: 2

on countInstancesOfItemInList(theList, theItem)
    set theCount to 0
    repeat with a from 1 to count of theList
        if item a of theList is theItem then
            set theCount to theCount + 1
        end if
    end repeat
    return theCount
end countInstancesOfItemInList
