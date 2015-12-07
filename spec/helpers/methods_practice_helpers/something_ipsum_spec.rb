# DO NOT DELETE THIS COMMENT BLOCK
#
# Specs in this file should only pass if:
#
# 1. Tested 100 times, `something_ipsum(10)` always returns a string with at least 10 characters
# 2. Tested 100 times, `something_ipsum(10)` never returns a string with more than 110 characters
# 3. Tested 100 times, `something_ipsum(250)` always returns a string with at least 250 characters
# 4. Tested 100 times, `something_ipsum(250)` never returns a string with more than 350 characters
# 5. Tested up to 5 times, `something_ipsum(10)` doesn't always return the same string
# 6. Tested up to 5 times, `something_ipsum(250)` doesn't always return the same string

require_relative '../../../helpers/methods_practice_helpers'

describe MethodsPracticeHelpers do
  include MethodsPracticeHelpersSpecHelpers
  include MethodsPracticeHelpers

  describe '#lansing_ipsum' do

    context 'when tested 100 times with a minimum character count of 10' do

      it 'always returns a string with at least 10 characters' do
        100.times do
          minimum_characters = 10
          puts lansing_ipsum(minimum_characters)
          expect(lansing_ipsum(minimum_characters).size).to be > 10
          test = 'something'
        end
      end

      it 'never returns a string with more than 110 characters' do
        minimum_characters = 10
        expect("#{lansing_ipsum(minimum_characters)}".size).to be <= 110
      end

    end

  end

end
