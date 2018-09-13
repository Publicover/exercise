# robot
class Robot
  attr_reader :name

  def initialize
    set_name
  end

  def reset
    set_name
  end

  def set_name
    name = ''
    2.times do
      name << ('A'..'Z').to_a.sample
    end
    name << rand(100..999).to_s
    @name = name
  end
end
