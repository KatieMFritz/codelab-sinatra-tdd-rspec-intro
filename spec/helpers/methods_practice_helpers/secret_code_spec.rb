# DO NOT DELETE THIS COMMENT BLOCK
#
# Specs in this file should only pass if:
#
# 1. `secret_code("The quick brown fox jumps over the lazy dog.")` returns `".G0D#YZ4L#3HT#R3V0#SPM|_|J#X0F#NW0RB#KC1|_|Q#3Ht"`
# 2. `secret_code("Two driven Jocks help fax my big Quiz.")` returns `".Z1|_|q#G1B#YM#X4F#PL3H#SKC0j#N3V1RD#0Wt"`

require_relative '../../../helpers/methods_practice_helpers'

describe MethodsPracticeHelpers do
  include MethodsPracticeHelpersSpecHelpers
  include MethodsPracticeHelpers

  describe '#secret_code' do

    it 'correctly encodes "The quick brown fox jumps over the lazy dog."' do
      text = 'The quick brown fox jumps over the lazy dog.'
      expect(secret_code(text)).to eq('.G0D#YZ4L#3HT#R3V0#SPM|_|J#X0F#NW0RB#KC1|_|Q#3Ht')
    end

    it 'correctly encodes "Two driven Jocks help fax my big Quiz."' do
      text = 'Two driven Jocks help fax my big Quiz.'
      expect(secret_code(text)).to eq('.Z1|_|q#G1B#YM#X4F#PL3H#SKC0j#N3V1RD#0Wt')
    end

  end

end
