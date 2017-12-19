require_relative '../../test_helper'
require_relative '../../../lib/day_two/part_one/checksum'

module DayTwo
  module PartOne
    class ChecksumTest < Minitest::Test
      def setup
        @tester = DayTwo::PartOne::Checksum.new
      end

      def test_calculates_checksum
        assert_equal 18, @tester.call([
          [5, 1, 9, 5],
          [7, 5, 3],
          [2, 4, 6, 8]
        ])
      end
    end
  end
end
