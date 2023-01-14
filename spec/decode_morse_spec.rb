require_relative '../decode_morse'

RSpec.describe DecodeMorse do
  context 'Decode Morse Code Character' do
    it 'Should decode a character' do
      result = DecodeMorse.new
      expect(result.decode_char('.-')).to eq 'A'
      expect(result.decode_char('--')).to eq 'M'
      expect(result.decode_char('-.--')).to eq 'Y'
    end
  end
end
