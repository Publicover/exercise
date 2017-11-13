class BinarySearch
  def initialize(elements)
    @elements = elements
    raise ArgumentError unless @elements == @elements.sort
  end

  def list
    @elements
  end

  def search_for(term)
    raise RuntimeError unless @elements.include?(term)
    @elements.index(term)
  end

  def middle
    @elements.index(@elements[@elements.size / 2])
  end
end
