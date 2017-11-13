class Bob
  def self.hey(remark)
    remark.delete!("\n")
    if remark == remark.upcase && remark.downcase != remark
      'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    elsif remark =~ /^\s*$/
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
