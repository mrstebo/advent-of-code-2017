module DayTwo
  module PartOne
    class Checksum
      def call(input)
        input.inject(0) do |sum, n|
          sum += n.max - n.min
          sum
        end
      end
    end
  end
end
