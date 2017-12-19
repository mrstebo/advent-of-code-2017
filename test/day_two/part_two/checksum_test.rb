require_relative '../../test_helper'
require_relative '../../../lib/day_two/part_two/checksum'

module DayTwo
  module PartTwo
    class ChecksumTest < Minitest::Test
      def setup
        @tester = DayTwo::PartTwo::Checksum.new
      end

      def test_calculates_simple_checksum
        assert_equal 4, @tester.call([
          [5, 9, 2, 8]
        ])
      end

      def test_calculates_checksum
        assert_equal 9, @tester.call([
          [5, 9, 2, 8],
          [9, 4, 7, 3],
          [3, 8, 6, 5]
        ])
      end

      def test_large_checksum_for_single_array
        assert_equal 18, @tester.call([
          [626, 2424, 2593, 139, 2136, 163, 1689, 367, 2235, 125, 2365, 924, 135, 2583, 1425, 2502]
        ])
      end
    end
  end
end
