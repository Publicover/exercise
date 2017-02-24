class FlattenArray

  VERSION = 1

  def self.flatten(ary, empty_ary=[])

    ary.each do |element|
      if element.is_a?(Array)
        flatten(element, empty_ary)
      else
        if element == nil
          break
        else
          empty_ary << element
        end
      end
    end
    empty_ary
  end

  module BookKeeping
    VERSION = 1
  end

end
