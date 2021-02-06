require 'rspec/autorun'

class NumberGenerator
    def random
        "A" * rand(1..10)
    end
end

RSpec.describe "Random" do
    it "generates a random number" do
        generator = NumberGenerator.new

        # stub
        allow(generator).to receive(:rand).and_return(5)

        expect(generator.random).to eq("AAAAA")
    end
end

class ImageFlipper
    def initialize(processor)
        @processor = processor
    end

    def flip(file)
        @processor.flip(file)
    end

end

RSpec.describe "ImageFlipper" do
    it "flips an image" do

        # this is a mock
        processor = double("processor")

        expect(processor).to receive(:flip).with("image.jpg")

        im = ImageFlipper.new(processor)
        im.flip("image.jpg")
    end
end