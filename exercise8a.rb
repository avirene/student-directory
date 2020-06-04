#The file name is the key of the SCRRIPT_LINES__ hash, and the value is an array with the lines

# Quine:
# puts <<2*2,2
# puts <<2*2,2
# 2

# "puts <<2" - print all the text from after this statement until you reach the string "2".
# ...."*2" - Print that string twice ....",
# 2" - And then print the value 2
# The second "puts <<2*2,2" is just text, and the final "2" is the delimiter.

def five(number)
    number % 5 == 0 ? true : false
end
def three(number)
    number % 3 == 0 ? true : false
end
def fizzbuzz(number)
    three(number) && five(number) ? "fizzbuzz" :
    three(number) ? "fizz" :
    five(number) ? "buzz" :
    number
end

SCRIPT_LINES__ = {__FILE__ => File.readlines(__FILE__)}
puts SCRIPT_LINES__[__FILE__]