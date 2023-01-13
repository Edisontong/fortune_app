class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["you will get a job right out of bootcamp", "everything will make sense soon", "go eat a popsicle and you will find a koala bear in the freezer"]
    render json: { fortune: fortunes.sample }
  end

  def numbers_method
    lucky_numbers = 6.times.map { rand(60) }
    render json: { number: lucky_numbers }
  end
end
