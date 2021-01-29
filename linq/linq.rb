require 'pp'

# words = [ "Perl", "c#", "ruby", "java" ]
 
# ordered = words
#     .sort
 
# puts ordered


# ordered = words
#     .sort_by{|x| x.downcase}

# puts ordered

# method chaining
# res = (1..100)
#         .map {|x| rand(x)}
#         .sort

# pp res


# (1..100)
#     .map {|x| rand(x)}
#     .sort
#     .take(5) => res

# pp res


# one_word = ["bear"]
 
# match = one_word
#     .one?
 
# nil_words = [nil]
 
# nil_match = nil_words
#     .one?
     
# words = ["java", "c#", "ruby"]
 
# multiple = words
#     .one?
 
# no_words = []
     
# none = no_words
#     .one?
 
# puts match, nil_match, multiple, none

# words = ["java", "c#", "ruby"]
 
# match = words
#     .one?{|x| x.length == 2}
 
# multiple = words
#     .one?{|x| x.length == 4}
 
# none = words
#     .one?{|x| x.length > 10}
 
# nil_word = [nil]
 
# nil_match = nil_word
#     .one?{|x| x == nil}
     
# puts match, multiple, none, nil_match


# words = ["a", "cow", "bell"]
 
# max_word = words
#     .max
 
# ints = [4, 1, 5, 3, 2]
 
# max_int = ints
#     .max
   
# puts max_word, max_int

# ints = [1, 2, 3, 4, 5]
 
# groups = ints
#     .group_by{|x| x % 2}
 
# groups.each{|group| puts "key #{group[0]} has values #{group[1]}"}


# some_words = ["arm", "bell", "cow"]
 
# first = some_words
#     .first
 
# no_words = []
     
# none = no_words
#     .first
     
# puts first, none == nil


# ints = [-2, -1, 0, 1, 2]
 
# match = ints
#     .find{|x| x > 0}
 
# none = ints
#     .find{|x| x > 10} # returns nil

# pp match, none


# ints = [-2, -1, 0, 1, 2, 3, 1]
 
# all = ints
#     .count
 
# some = ints
#     .count{|x| x > 0}
 
# specific = ints
#     .count(1)
     
# puts all, some, specific

ints = [-2, -1, 0, 1, 2, 3, 4]
 
positives = ints
    .find_all{|x| x > 0}
   
puts positives


