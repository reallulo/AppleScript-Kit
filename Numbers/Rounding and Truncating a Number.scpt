roundAndTruncateNumber(1.04575, 3)
    --> Result: "1.046"

on roundAndTruncateNumber(theNumber, numberOfDecimalPlaces)
    if numberOfDecimalPlaces is 0 then
        set theNumber to theNumber + 0.5
        return convertNumberToString(theNumber div 1)
    end if

    set theRoundingValue to "5"
    repeat numberOfDecimalPlaces times
        set theRoundingValue to "0" & theRoundingValue
    end repeat
    set theRoundingValue to ("." & theRoundingValue) as number

    set theNumber to theNumber + theRoundingValue

    set theModValue to "1"
    repeat numberOfDecimalPlaces - 1 times
        set theModValue to "0" & theModValue
    end repeat
    set theModValue to ("." & theModValue) as number

    set theSecondPart to (theNumber mod 1) div theModValue
    if length of (theSecondPart as text) is less than numberOfDecimalPlaces then
        repeat numberOfDecimalPlaces - (the length of (theSecondPart as text)) times
            set theSecondPart to ("0" & theSecondPart) as string
        end repeat
    end if

    set theFirstPart to theNumber div 1
    set theFirstPart to convertNumberToString(theFirstPart)
    set theNumber to (theFirstPart & "." & theSecondPart)

    return theNumber
end roundAndTruncateNumber

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
