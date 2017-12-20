require_relative '../../test_helper'
require_relative '../../../lib/day_three/part_one/spiral_memory'

module DayThree
  module PartOne
    class SpiralMemoryTest < Minitest::Test
      def setup
        @tester = DayThree::PartOne::SpiralMemory.new
      end

      def test_steps_from_access_port
        assert_equal 0, @tester.call(1)
      end

      def test_three_steps_from_access_port
        assert_equal 3, @tester.call(12)
      end

      def test_two_steps_from_access_port
        assert_equal 2, @tester.call(23)
      end

      def test_thirty_one_steps_from_access_port
        assert_equal 31, @tester.call(1024)
      end
    end
  end
end
