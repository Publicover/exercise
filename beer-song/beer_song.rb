class BeerSong

  def verse(number)

    if number == 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
    elsif number == 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    end

# No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  def verses(beginning, ending)
    counter = beginning
    if beginning == 1
      bottle_case = "1 bottle"
    else
      bottle_case = "#{beginning} bottles"
    end
    (beginning - 1).times do
      "#{bottle_case} of beer on the wall, #{bottle_case} of beer.\n" \
      "Take one down and pass it around, #{beginning - 1} bottles of beer on the wall.\n"
      verse(beginning)
      beginning -= 1
    end
  end

end
