def captcha(input)
  data = input.to_s.each_char.map(&:to_i)
  data.each_with_index.inject(0) do |sum, (n, i)|
    if n == data[(i+1) % data.size]
      sum += n
    end
    sum
  end
end

p captcha(1122)
p captcha(1111)
p captcha(1234)
p captcha(91212129)
