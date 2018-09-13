# series
class Series
  def initialize(loaf)
    @loaf = loaf
  end

  def slices(number)
    i = 0
    new_combos = []
    raise ArgumentError if number > @loaf.size
    until i == @loaf.size
      new_combos << @loaf[i, number] unless @loaf[i, number].size < number
      i += 1
    end
    new_combos
  end
end
