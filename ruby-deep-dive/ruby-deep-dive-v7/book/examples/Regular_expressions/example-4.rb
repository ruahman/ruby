
# If you don't escape then the letter will match
"5a5".match(/\d.\d/)

# In this case only a literal dot matches
"5a5".match(/\d\.\d/) # nil
"5.5".match(/\d\.\d/) # match
