
# We want to find if this string is exactly five letters long
# this will still match because it has at least five,
# but it's not what we want.
"Regexp are cool".match /\w{5}/

# Instead we will use the 'beginning of line' and 'end of line' modifiers
"Regexp are cool".match /^\w{5}$/

# This time it won't match. This is a rather contrived example,
# since we could just have used .size to find the length,
# but I think it gets the idea across.
