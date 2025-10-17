class StringCalculator
  def add(str)
    return 0 if str.empty?
    str.to_s.split(/[\\n,;:\s]/).reject{|e| e.empty?}.map{|e| e.to_i}.inject(:+)
  end
end
