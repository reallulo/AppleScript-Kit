
getLowestNumberInList({-3.25, 23, 2345, "sid", 3, 67})
--> Result: -3.25

getLowestNumberInList({-3.25, 23, {-22, 78695, "Sal"}, 2345, true, "sid", 3, 67})
--> Result: -22

getLowestNumberInList({"this", "list", "contains", "only", "text"})
--> Result: false

on getLowestNumberInList(theList)
    set theLowestNumber to false
    repeat with a from 1 to count of theList
        set theCurrentItem to item a of theList
        set theClass to class of theCurrentItem
        if theClass is in {integer, real} then
            if theLowestNumber is "" then
                set theLowestNumber to theCurrentItem
            else if theCurrentItem is less than theLowestNumber then
                set theLowestNumber to item a of theList
            end if
        else if theClass is list then
            set theLowValue to getLowestNumberInList(theCurrentItem)
            if theLowValue is less than theLowestNumber then
                set theLowestNumber to theLowValue
            end if
        end if
    end repeat
    return theLowestNumber
end getLowestNumberInList
