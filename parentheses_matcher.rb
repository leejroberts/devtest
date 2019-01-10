class ParenthesesMatcher

  def self.match(str, idx)
    return -1 if "(" != str[idx]
    parenstack = []

    str.each_char.with_index do |char, i|
      if i <= idx
        next
      elsif char == "("
        parenstack << char
      elsif char == ")"
        if parenstack.empty?
          return i
        else
          parenstack.pop
        end
      end
    end
    -1
  end

end
