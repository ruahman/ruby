send(:puts, "Hello")

class PrivateTesting
  private_methods

  def internal_method
    "Only for internal"
  end
end

pt = PrivateTesting.new

p pt.send(:internal_method)


puts self


class FindingSelf

  puts self

  def show_self
    puts self
  end
end

fs = FindingSelf.new
fs.show_self


class A 
  def say
  end
end

class B < A 
end

p B.new.respond_to?(:say)


class Finder
  def method_missing(name, *args, &block)
    puts "method #{name} is called"
  end
end


Finder.new.test_this_method

module Mail
  extend self

  def dsl_methods(*args)
    args.each do |name|
      define_method(name) { |data| @options[name] = data }
    end
  end

  dsl_methods :subject, :body 

  def deliver(&block)
    @options = {}
    instance_eval(&block)
    send_now
  end

  def from(email)
    @options[:from] = email
  end

  def to(email)
    @options[:to] = email
  end

  def send_now
    puts "Sending email"
    p @options
  end

end

Mail.deliver do
  from "jesusafdasdf"
  to "asdfasdfa"
  subject "asdfasfdasdf"
  body "asdfasdfasf"
end



