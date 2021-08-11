require 'pry-byebug'

# this is
class HelloWorld
  def say_hello
    'Hello World!'
  end
end

describe HelloWorld do
  context 'When testing the HelloWorld class' do
    it "should say 'Hello world' when we call the say_hello method" do
      puts 'does this show up.....'
      binding.pry
      hw = HelloWorld.new
      message = hw.say_hello
      expect(message).to eq 'Hello World!'
    end
  end
end
