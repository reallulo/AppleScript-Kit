
-- These handlers call the convertNumberToString() handler.
convertNumberToCommaDelimitedString(872124243234)
--> Result: "872,124,243,234"

on convertNumberToCommaDelimitedString(theNumber)
    -- Convert the number to a string
    set theNumber to convertNumberToString(theNumber)

    -- Determine the length of the number
    set theNumberLength to length of theNumber

    -- Reverse the number so a comma can be added every 3 digits
    set theNumber to (reverse of every character of theNumber) as string

    -- Loop through the number's digits, add commas, and put the numbers back in the correct order
    set theConvertedNumber to ""
    repeat with a from 1 to theNumberLength
        if a is theNumberLength or (a mod 3) is not 0 then
            set theConvertedNumber to (character a of theNumber & theConvertedNumber) as string
        else
            set theConvertedNumber to ("," & character a of theNumber & theConvertedNumber) as string
        end if
    end repeat

    -- Return the comma delimited number
    return theConvertedNumber
end convertNumberToCommaDelimitedString

on convertNumberToString(theNumber)
    set theNumberString to theNumber as string
    set theOffset to offset of "E" in theNumberString
    if theOffset = 0 then return theNumberString
    set thePrefix to text 1 thru (theOffset - 1) of theNumberString
    set theConvertedNumberPrefix to ""
    if thePrefix begins with "-" then
        set theConvertedNumberPrefix to "-"
        if thePrefix = "-" then
            set thePrefix to ""
        else
            set thePrefix to text 2 thru -1 of thePrefix
        end if
    end if
    set theDecimalAdjustment to (text (theOffset + 1) thru -1 of theNumberString) as number
    set isNegativeDecimalAdjustment to theDecimalAdjustment is less than 0
    if isNegativeDecimalAdjustment then
        set thePrefix to (reverse of (characters of thePrefix)) as string
        set theDecimalAdjustment to -theDecimalAdjustment
    end if
    set theDecimalOffset to offset of "." in thePrefix
    if theDecimalOffset = 0 then
        set theFirstPart to ""
    else
        set theFirstPart to text 1 thru (theDecimalOffset - 1) of thePrefix
    end if
    set theSecondPart to text (theDecimalOffset + 1) thru -1 of thePrefix
    set theConvertedNumber to theFirstPart
    set theRepeatCount to theDecimalAdjustment
    if (length of theSecondPart) is greater than theRepeatCount then set theRepeatCount to length of theSecondPart
    repeat with a from 1 to theRepeatCount
        try
            set theConvertedNumber to theConvertedNumber & character a of theSecondPart
        on error
            set theConvertedNumber to theConvertedNumber & "0"
        end try
        if a = theDecimalAdjustment and a is not equal to (length of theSecondPart) then set theConvertedNumber to theConvertedNumber & "."
    end repeat     if theConvertedNumber ends with "." then set theConvertedNumber to theConvertedNumber & "0"
    if isNegativeDecimalAdjustment then set theConvertedNumber to (reverse of (characters of theConvertedNumber)) as string
    return theConvertedNumberPrefix & theConvertedNumber
end convertNumberToString
