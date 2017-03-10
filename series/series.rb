class Series

  def initialize(loaf)
    @loaf = loaf
  end

  def slices(number)
    combos = @loaf.split("")
    combos.each_slice(number).to_a
  end

end
