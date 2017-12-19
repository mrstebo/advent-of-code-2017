module DayTwo
  module PartOne
    class Checksum
      def call(input)
        input.inject(0) do |sum, row|
          sum += row.max - row.min
          sum
        end
      end
    end
  end
end
