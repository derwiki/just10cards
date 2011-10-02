class DefaultController < ApplicationController
  def show
    render
  end

  def cards
    @horizontal_divider = "+#{(['-' * 40] * 2).join('+')}+\n"
    @card = params[:card].split("\r\n").map {|line| line.center(40)}
    while @card.size < 7 do
      @card << ' ' * 40
    end
  end
end
