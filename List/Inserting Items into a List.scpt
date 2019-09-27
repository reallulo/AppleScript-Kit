
set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList({"Lizzie", "Maddie", "Lillie"}, theList, 3)
--> Result: {"Sal", "Ben", "Lizzie", "Maddie", "Lillie", "David", "Chris"}

set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList("Jen", theList, 3)
--> Result: {"Sal", "Ben", "Jen", "David", "Chris"}

set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList({{"Lizzie", "Maddie", "Lillie"}}, theList, 3)
--> Result: {"Sal", "Ben", {"Lizzie", "Maddie", "Lillie"}, "David", "Chris"}

set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList("Jen", theList, -1)
--> {"Sal", "Ben", "David", "Chris", "Jen"}

set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList("Wanda", theList, -2)
--> {"Sal", "Sue", "Bob", "Wanda", "Carl"}

set theList to {"Sal", "Ben", "David", "Chris"}
insertItemInList("Jen", theList, 15)
--> Result: false

on insertItemInList(theItem, theList, thePosition)
    set theListCount to length of theList
    if thePosition is 0 then
        return false
    else if thePosition is less than 0 then
        if (thePosition * -1) is greater than theListCount + 1 then return false
    else
        if thePosition is greater than theListCount + 1 then return false
    end if
    if thePosition is less than 0 then
        if (thePosition * -1) is theListCount + 1 then
            set beginning of theList to theItem
        else
            set theList to reverse of theList
            set thePosition to (thePosition * -1)
            if thePosition is 1 then
                set beginning of theList to theItem
            else if thePosition is (theListCount + 1) then
                set end of theList to theItem
            else
                set theList to (items 1 thru (thePosition - 1) of theList) & theItem & (items thePosition thru -1 of theList)
            end if
            set theList to reverse of theList
        end if
    else
        if thePosition is 1 then
            set beginning of theList to theItem
        else if thePosition is (theListCount + 1) then
            set end of theList to theItem
        else
            set theList to (items 1 thru (thePosition - 1) of theList) & theItem & (items thePosition thru -1 of theList)
        end if
    end if
    return theList
end insertItemInList
