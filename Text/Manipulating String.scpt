-- Getting the Characters of a String
set theText to "The quick brown fox jumps over a lazy dog."
characters of theText
--> Result: {"T", "h", "e", " ", "q", "u", "i", "c", "k", " ", "b", "r", "o", "w", "n", " ", "f", "o", "x", " ", "j", "u", "m", "p", "s", " ", "o", "v", "e", "r", " ", "a", " ", "l", "a", "z", "y", " ", "d", "o", "g", "."}

-- Getting the Length of String
set theText to "The quick brown fox jumps over a lazy dog."
length of theText
--> Result: 42

-- Getting the Paragraphs of a String
set theText to "* Sal
* Ben
* Chris
* David"
paragraphs of theText
--> Result: {"* Sal", "* Ben", "* Chris", "* David"}

-- Getting the Position of Text in a String
set theText to "The quick brown fox jumps over a lazy dog."
offset of "quick" in theText
--> Result: 5
