class StringCalculator
  def add(str)
    return 0 if str.empty?
    str.split(/[\s,;]/).map{|e| e.to_i}.inject(:+)
  end
end
