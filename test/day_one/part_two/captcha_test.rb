require_relative '../../test_helper'
require_relative '../../../lib/day_one/part_two/captcha'

module DayOne
  module PartTwo
    class CaptchaTest < Minitest::Test
      def setup
        @tester = DayOne::PartTwo::Captcha.new
      end

      def test_all_digits_match_the_digit_two_items_ahead
        assert_equal 6, @tester.call(1212)
      end

      def test_every_comparison_is_between_a_one_and_a_two
        assert_equal 0, @tester.call(1221)
      end

      def test_both_twos_match_each_other_but_no_other_digit_has_a_match
        assert_equal 4, @tester.call(123425)
      end

      def test_all_digits_match
        assert_equal 12, @tester.call(123123)
      end

      def test_some_digits_match
        assert_equal 4, @tester.call(12131415)
      end
    end
  end
end
