require 'pp'

# # pattern match an array
# translation = ['th', 'เต้', 'ja', 'テイ']

# case translation
# in ['th', orig_text, 'en', trans_text]
#   puts "English translation: #{orig_text} => #{trans_text}"
# in ['th', orig_text, 'ja', trans_text]
#   # this will get executed
#   puts "Japanese translation: #{orig_text} => #{trans_text}"
# end

# # pattern match a hash
# translation = {orig_lang: 'th', trans_lang: 'en', orig_txt: 'เต้', trans_txt: 'tae' }

# case translation
# in {orig_lang: 'th', trans_lang: 'en', orig_txt: orig_txt, trans_txt: trans_txt}
#   puts "#{orig_txt} => #{trans_txt}"
# end

# this does not work for me
# # multiple patterns
# pattern = [1, 2]

# case pattern
# in [x, 2] | [1, y]
#   puts x 
# end

# # arrow assignment
# case ['I am a string', 10]
# in [Integer, Integer] => a
#   # not reached
# in [String, Integer] => b
#   puts b #=> ['I am a string', 10]
# end


# case ['this will be ignored',2]
# in [_,a]
#   puts a #=> 2
# end


# case ['a',2]
# in [_,a] => b
#   puts a #=> 2
#   puts b #=> ['a',2]
# end


# pattern = {
#   nickName: 'Tae',
#   realName: {firstName: 'Noppakun', lastName: 'Wongsrinoppakun'},
#   username: 'tae8838'
# }


# pattern = {
#   nickname: 'Tae',
#   realname: {first: 'Noppakun', last: 'Wongsrinoppakun'}
# }


# pattern = {
#     first: "diego",
#     last: "vila"
# }


# def display_name(name_hash)
#   case name_hash
#   in {username: username}
#     username
#   in {nickname: nickname, realname: {first: first, last: last}}
#     "#{nickname} #{first} #{last}"
#   in {first: first, last: last}
#     "#{first} #{last}"
#   else
#     'New User'
#   end
# end


# pp display_name(pattern)

# class Coordinate
#   attr_accessor :x, :y

#   def initialize(x, y)
#     @x = x
#     @y = y
#   end

#   def deconstruct
#     [@x, @y]
#   end

#   def deconstruct_key
#     {x: @x, y: @y}
#   end
# end


# c = Coordinate.new(32,50)

# case c
# in [a,b]
#   p a #=> 32
#   p b #=> 50
# end


# does not work
# case c
# in {x:, y:}
#   p x #=> 32
#   p y #=> 50
# end

# pp case [1, 2]
# in [2, a]
#   :no_match
# in [1, a]
#   :match
# end

# case [1, 2, 3, 4]
# in [1, *a]
# end

# pp a


# case [1, 2, 3]
# in [_, a, 3]
# end

# pp a

# case [1, [2, 3, 4]]
# in [a, [b, *c]]
# end

# pp a, b, c

# case { foo: 1, bar: 2 }
# in { foo: 1, baz: 3 }
#   :no_match
# in { foo: 1, bar: b }
#   :match
# end

# pp b

# case { foo: 1, bar: 2, baz: 3 }
# in { foo: 1, **rest }
# end

# pp rest

# res = case [1, 2, 3]
# in [a, *c] if a != 1
#   :no_match
# in [a, *c] if a == 1
#   :match
# end

# pp res, c

# res = case 2
# in (1..3)
#   :match
# in Integer
#   :too_late_for_match
# end

# pp res

# res = case 5
# in 6
#   :no_match
# in 2 | 3 | 5
#   :match
# end

# pp res


# class Date

#   def initialize(year, month, day)
#     @year = year
#     @month = month
#     @day = day
#   end

#   def deconstruct_keys(keys)
#     { year: @year, month: @month, day: @day }
#   end

#   def deconstruct
#     [@year, @month, @day]
#   end
# end

# date = Date.new(2019, 9, 21)

# case date
# in year:
# end

# pp year

# case date
# in year, month, day
# end

# pp year, month, day

json = <<-eos
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "Point",
        "coordinates": [
          18.666200637817383,
          50.29543618146685
        ]
      }
    }
  ]
}
eos


# pp json

require 'json'

case JSON.parse(json, symbolize_names: true)
in { type: "FeatureCollection", features: [{type: "Feature", geometry: { type: "Point", coordinates: [longitude, latitude]}}]}
end

pp longitude, latitude
