require_relative '../decode_morse'

RSpec.describe DecodeMorse do
  context "Decode Morse Code Character" do
    it "Should decode a character" do
      result = DecodeMorse.new
      expect(result.decode_char(".-")).to eq "A"
    end
  end
end
