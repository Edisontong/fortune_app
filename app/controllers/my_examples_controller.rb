class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["you will get a job right out of bootcamp", "everything will make sense soon", "go eat a popsicle and you will find a koala bear in the freezer"]
    render json: { fortune: fortunes.sample }
  end

  def numbers_method
    lucky_numbers = 6.times.map { rand(60) }
    render json: { number: lucky_numbers }
  end

  def song_method
    bottles = 99
    song = []
    while bottles >= 0
      if bottles > 1
        verse = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer. Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
        song << verse
      elsif bottles == 1
        verse = "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
        song << verse
      else
        verse = "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
        song << verse
      end
      bottles -= 1
    end
    render json: { bottles_song: song }
  end
end
