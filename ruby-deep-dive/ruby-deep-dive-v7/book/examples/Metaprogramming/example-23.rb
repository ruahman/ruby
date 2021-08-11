
module Mail
  extend self

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

  def subject(title)
    @options[:subject] = title
  end

  def body(msg)
    @options[:body] = msg
  end

  def send_now
    puts "Sending email..."
    p @options
  end
end
