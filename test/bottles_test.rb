require 'minitest/autorun'
require 'minitest/pride'
require './lib/bottles.rb'
require 'pry'

class BottlesTest < Minitest::Test

  def test_it_exists
    assert Bottles.new
  end

  def test_it_can_sing
    bottles = Bottles.new
    assert bottles.sing_song(1)
  end

  def test_it_can_sing_whole_song
    bottles = Bottles.new
    assert bottles.sing_song(99)
  end

  def test_it_can_end_the_song
    bottles = Bottles.new
    bottles.sing_song(1)
    refute bottles.number_of_lines > 1
  end
end