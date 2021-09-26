class String
  def style(code); "\033[#{code}m#{self}\033[0m" end
end

(1..107).each { |i| print i.to_s.style(i) + ' ' }
