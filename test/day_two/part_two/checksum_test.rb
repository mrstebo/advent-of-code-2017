require_relative '../../test_helper'
require_relative '../../../lib/day_two/part_two/checksum'

module DayTwo
  module PartTwo
    class ChecksumTest < Minitest::Test
      def setup
        @tester = DayTwo::PartTwo::Checksum.new
      end

      def test_calculates_checksum
        assert_equal 9, @tester.call([
          [5, 9, 2, 8],
          [9, 4, 7, 3],
          [3, 8, 6, 5]
        ])
      end
    end
  end
end
