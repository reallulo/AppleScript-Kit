
set theList to {"Sal", "Ben", "David", "Chris"}
sortList(theList)
--> Result: {"Ben", "Chris", "David", "Sal"}

on sortList(theList)
    set theIndexList to {}
    set theSortedList to {}
    repeat (length of theList) times
        set theLowItem to ""
        repeat with a from 1 to (length of theList)
            if a is not in theIndexList then
                set theCurrentItem to item a of theList as text
                if theLowItem is "" then
                    set theLowItem to theCurrentItem
                    set theLowItemIndex to a
                else if theCurrentItem comes before theLowItem then
                    set theLowItem to theCurrentItem
                    set theLowItemIndex to a
                end if
            end if
        end repeat
        set end of theSortedList to theLowItem
        set end of theIndexList to theLowItemIndex
    end repeat
    return theSortedList
end sortList
