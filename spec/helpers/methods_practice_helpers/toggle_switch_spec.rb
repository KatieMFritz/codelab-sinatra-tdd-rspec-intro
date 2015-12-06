# DO NOT DELETE THIS COMMENT BLOCK
#
# Specs in this file should only pass if:
#
# 1. `toggle_switch("on")` returns `"off"`
# 2. `toggle_switch("off") returns `"on"`
# 3. `toggle_switch(random_string(4,10))` returns `"broken"`

require_relative '../../../helpers/methods_practice_helpers'

describe MethodsPracticeHelpers do
  include MethodsPracticeHelpers

  STATES_TO_TEST = ['off', 'on', 'random_string(4,10))']

  describe '#toggle_switch' do

    STATES_TO_TEST.each do |state|
      context "when the state is #{state}" do
        before(:each) do
          if state == "off"
            @expected_message = "on"
          elsif state == "on"
            @expected_message = "off"
          else
            @expected_message = "broken"
          end
          @actual_message = toggle_switch(state)
        end

        it "returns \"#{@expected_message}\"" do
          expect(@actual_message).to eq(@expected_message)
        end

      end

    end

  end

end
