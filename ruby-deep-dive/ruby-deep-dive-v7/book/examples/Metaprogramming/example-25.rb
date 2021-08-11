
def dsl_methods(*args)
  args.each do |name|
    define_method(name) { |data| @options[name] = data }
  end
end
