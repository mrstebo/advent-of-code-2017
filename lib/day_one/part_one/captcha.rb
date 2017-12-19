def captcha(input)
  data = input.to_s.each_char.map(&:to_i)
  data.each_with_index.inject(0) do |sum, (n, i)|
    sum += n if n == data[(i+1) % data.size]
    sum
  end
end
