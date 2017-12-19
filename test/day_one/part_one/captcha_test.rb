require_relative '../../test_helper'
require_relative '../../../lib/day_one/part_one/captcha'

class CaptchaTest < Minitest::Test
  def test_first_digit_matches_second_and_third_digit_matches_forth
    assert_equal 3, captcha(1122)
  end

  def test_each_digit_matches_the_next
    assert_equal 4, captcha(1111)
  end

  def test_no_digit_matches_the_next
    assert_equal 0, captcha(1234)
  end

  def test_only_first_digit_matches_last
    assert_equal 9, captcha(91212129)
  end
end
