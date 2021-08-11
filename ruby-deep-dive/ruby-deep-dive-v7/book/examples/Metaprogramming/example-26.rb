
module Mail
  extend self

  def dsl_methods(*args)
    args.each do |name|
      define_method(name) { |data| @options[name] = data }
    end
  end
  
  dsl_methods :from, :to, :subject, :body

  def deliver(&block)
    @options = {}
    instance_eval(&block)
    send_now
  end

  def send_now
    puts "Sending email..."
    p @options
  end
end
