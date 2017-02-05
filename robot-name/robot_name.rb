class Robot

  attr_reader :name

  def initialize
    @name = ""
    2.times do
      @name << ("A".."Z").to_a.sample
    end
    @name << rand(100..999).to_s
  end

  def reset
    # @name.gsub!(/\w/, "")
    # @name = name
    # @name = nil
    initialize
    # @name = ""
  end

  # def name
  #   2.times do
  #     @name << ("A".."Z").to_a.sample
  #   end
  #   @name << rand(100..999).to_s
  # end

end
