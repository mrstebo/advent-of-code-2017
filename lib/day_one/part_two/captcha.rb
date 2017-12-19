module DayOne
  module PartTwo
    class Captcha
      def call(input)
        data = input.to_s.each_char.map(&:to_i)
        data.each_with_index.inject(0) do |sum, (n, i)|
          sum += n if n == data[(data.size/2+i) % data.size]
          sum
        end
      end
    end
  end
end
