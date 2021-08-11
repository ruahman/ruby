
String.instance_eval do
  define_singleton_method(:hello) { puts "hello there" }
end

String.hello
