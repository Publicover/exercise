# cipher
class RailFenceCipher
  def self.encode(message, rail)
    return message if rail < 2

    # ary_count = rail
    # while ary_count > 0 do
    #   ary_"#{ary_count}" = Array.new
    #   ary_count -= 1
    # end

    # ary_1 = Array.new
    # ary_2 = Array.new
    halfway_coded = []
    rail.times do
      halfway_coded << []
    end

    letters = message.split('')
    letters.each_with_index do |element, i|
      if i.even?
        halfway_coded[0] << element
      else
        halfway_coded[1] << element
      end
    end
    halfway_coded.join
  end
end
