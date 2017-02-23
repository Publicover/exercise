class Robot

  attr_reader :name

  def initialize
    set_name
  end

  def reset
    # @name.gsub!(/\w/, "")
    # @name = name
    # @name = nil
    # initialize
    set_name
    # @name = ""
  end

  def set_name
    @name = ""
    2.times do
      @name << ("A".."Z").to_a.sample
    end
    @name << rand(100..999).to_s
    # @name << ((100..999).to_a.sample).to_s
  end

  # def name
  #   2.times do
  #     @name << ("A".."Z").to_a.sample
  #   end
  #   @name << rand(100..999).to_s
  # end

end
