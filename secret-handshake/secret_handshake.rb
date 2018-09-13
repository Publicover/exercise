# shake
class SecretHandshake

  # ACTIONS = {'1' => 'wink', '10' => 'double blink',
  #            '100' => 'close your eyes', '1000' => 'jump',
  #            '10000' => 'reverse'}

  def case_number(binary)
    case binary
    when 1
      'wink'
    when 10
      'double blink'
    when 100
      'close your eyes'
    when 1_000
      'jump'
    when 10_000
      'reverse'
    end
  end

  def initialize(number)
    @number = number.to_s(2)
  end

  def commands(results = [])
    results << case_number(@number.to_i)
  end
end
