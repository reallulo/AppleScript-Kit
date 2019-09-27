
set theList to {"Sal", "Ben", "David", "Chris"}
set item 3 of theList to "Wanda"
return theList
--> Result: {"Sal", "Sue", "Wanda", "Carl"}

set theList to {"Sal", "Jen", "Ben", "David", "Chris", "Jen"}
replaceItemInList("Jen", theList, "Lizzie", true)
--> {"Sal", "Lizzie", "Ben", "David", "Chris", "Lizzie"}

on replaceItemInList(theItem, theList, theReplacementItem, replaceAll)
    repeat with a from 1 to the count of theList
        set theCurrentItem to item a of theList
        if theCurrentItem is theItem then
            set item a of theList to theReplacementItem
            if replaceAll is false then return theList
        end if
    end repeat
    return theList
end replaceItemInList
