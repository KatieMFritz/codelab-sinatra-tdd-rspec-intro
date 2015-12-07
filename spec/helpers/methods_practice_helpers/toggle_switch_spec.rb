# DO NOT DELETE THIS COMMENT BLOCK
#
# Specs in this file should only pass if:
#
# 1. `toggle_switch("on")` returns `"off"`
# 2. `toggle_switch("off") returns `"on"`
# 3. `toggle_switch(random_string(4,10))` returns `"broken"`

require_relative '../../../helpers/methods_practice_helpers'

describe MethodsPracticeHelpers do
  include MethodsPracticeHelpersSpecHelpers
  include MethodsPracticeHelpers

  describe '#toggle_switch' do

    it 'returns OFF when state is ON' do |state|
      state = 'on'
      expect(toggle_switch(state)).to eq('off')
    end

    it 'returns ON when state is OFF' do |state|
      state = 'off'
      expect(toggle_switch(state)).to eq('on')
    end

    it 'returns BROKEN when state is NOT SET' do |state|
      state = random_string(4,10)
      expect(toggle_switch(state)).to eq('broken')
    end

  end

end
