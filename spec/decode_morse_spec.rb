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

  context 'Decode Morse Word' do
    it 'Should decode a word' do
      result = DecodeMorse.new
      expect(result.decode_word('-- -.--')).to eq 'MY'
      expect(result.decode_word('-. .- -- .')).to eq 'NAME'
    end
  end

  context 'Decode Morse Word' do
    it 'Should decode a word' do
      result = DecodeMorse.new
      expect(result.decode('--')).to eq 'M'
      expect(result.decode('-.--')).to eq 'Y'
      expect(result.decode('-- -.--')).to eq 'MY'
      expect(result.decode('-. .- -- .')).to eq 'NAME'
      expect(result.decode('-- -.--   -. .- -- .')).to eq 'MY NAME'
    end
  end
end
