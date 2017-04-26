if number.length < 2
  return false
end

number.gsub!(/[^0-9]/, "")
digits = number.split("")
cleaned_digits = ""

if digits.length % 2 != 0
  digits << 0
end

digits.reverse.each_with_index do |digit, index|
  if index % 2 == 0
    if digit.to_i * 2 > 9
      cleaned_digits << (digit.to_i * 2 - 9).to_s
    else
      cleaned_digits << digit
    end
  end
end

cleaned_digits = cleaned_digits.to_i.split("")
final_sum = cleaned_digits.inject(0) { |sum, x| sum + x }

if final_sum == 10
  true
else
  false
end



end
