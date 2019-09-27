
getHighestNumberInList({-3.25, 23, 2345, "sid", 3, 67})
--> Result: 2345

getHighestNumberInList({-3.25, 23, {23, 78695, "bob"}, 2345, true, "sid", 3, 67})
--> Result: 78695

getHighestNumberInList({"this", "list", "contains", "only", "text"})
--> Result: false

on getHighestNumberInList(theList)
    set theHighestNumber to false
    repeat with a from 1 to count of theList
        set theCurrentItem to item a of theList
        set theClass to class of theCurrentItem
        if theClass is in {integer, real} then
            if theHighestNumber is "" then
                set theHighestNumber to theCurrentItem
            else if theCurrentItem is greater than theHighestNumber then
                set theHighestNumber to item a of theList
            end if
        else if theClass is list then
            set theHighValue to getHighestNumberInList(theCurrentItem)
            if theHighValue is greater than theHighestNumber then
                set theHighestNumber to theHighValue
            end if
        end if
    end repeat
    return theHighestNumber
end getHighestNumberInList
