require 'pry'

class Bottles

  def initialize(num = 99)
    sing_song(num)
  end

  def sing_song(num)
    num.downto(0) do |number|
      binding.pry
      if number > 1 ? puts(main_verses(number)) : puts(final_verse)
      end
    end
    nil
  end

  def main_verses(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall."
  end

  def final_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
  end
end
