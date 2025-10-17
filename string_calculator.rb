class StringCalculator
  def add(str)
    return 0 if str.empty?
    arr = to_arr(str)
    negative_arr = check_negative_numbers(arr)
    if negative_arr.any?
      throw_exception(negative_arr)
    end
    arr.inject(:+)
  end

  def to_arr(str)
    str.to_s.split(/[\\n,;:\s]/).compact.reject{|e| e.empty?}.map{|e| e.to_i}
  end

  def check_negative_numbers(arr)
    arr.select{|e| e.negative? }
  end

  def throw_exception(negative_arr)
    raise "Negative numbers not allowed <#{negative_arr.join(',')}>"
  end
end
