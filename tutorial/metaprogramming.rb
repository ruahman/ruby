

class Baseball

end

# p Baseball.new.swiing

class Baseball
    def swiing
        "swing....."
    end
end

p Baseball.new.swiing

class Baseball
    def swiing
        "strike..."
    end
end

p Baseball.new.swiing



class String
    def censor(bad_word)
        self.gsub! "#{bad_word}", "CENSORD"
    end

    def num_of_chars
        size
    end
end

p "the bunny was in trouble with the king's bunny".censor("bunny")

p "no work and no play make jack a dull dull boy hello world again".num_of_chars

require 'ostruct'

class Author
    attr_accessor :first_name, :last_name, :genre

    def author 
        OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
    end

    # this is a builtin method, it gets called when it does not reconize method
    def method_missing(method_name, *arguments, &block)
        if method_name.to_s =~ /author_(.*)/
            author.send($1, *arguments, &block)
        else
            super 
        end
    end

    # now .respond_to works
    def respond_to_missing?(method_name, include_private = false)
        method_name.to_s.start_with?('author_') || super
    end
end

author = Author.new
author.first_name = 'asdfkjas;jf'
author.last_name = "vila"
author.genre = "math"

p author.first_name

p author.author_genre
p author.respond_to?(:author_genre)


class Author2
    genres = %w(fiction coding history)

    genres.each do |genre|
        define_method("#{genre}_details") do |arg|
            puts "Genre: #{genre}"
            puts arg
            puts genre.object_id
        end
    end

end


author = Author2.new.coding_details 'foobar'
author = Author2.new.fiction_details 'ann ran'

p Author2.new.respond_to?(:coding_details)
p Author2.new.respond_to?(:fiction_details)