require 'prime'

module DayTwo
  module PartTwo
    class Checksum
      def call(input)
        input.sum do |row|
          row.permutation(2).find { |a, b| a % b == 0 }.reduce(:/)
        end
      end
    end
  end
end
