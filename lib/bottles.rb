require 'pry'

class Bottles

  attr_reader :number_of_lines

  def sing_song(num)
    @number_of_lines = num
    num.downto(1) do |number|
      if number > 1
       puts main_verses
      else
       puts final_verse
      end
    end
  end

  def main_verses
    "#{@number_of_lines} bottles of beer on the wall, #{@number_of_lines} bottles of beer.\nTake one down and pass it around, #{@number_of_lines - 1} bottles of beer on the wall."
  end

  def final_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
  end
  # binding.pry
end

