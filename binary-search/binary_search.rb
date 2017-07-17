class BinarySearch

  def initialize(elements)
    @elements = elements
    unless @elements == @elements.sort
      raise ArgumentError
    end
  end

  def list
    @elements
  end

  def search_for(term)
    unless @elements.include?(term)
      raise RuntimeError
    else
      # return @elements.index(@elements[term])
      @elements.index(term)
    end
  end

  def middle
    @elements.index(@elements[@elements.size / 2])
  end


end
