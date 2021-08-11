
module Mail
  extend self

  def deliver(&block)
    @options = {}
    yield
    send_now
  end

  def from(email)
    @options[:from] = email
  end

  # rest of methods here...
end
