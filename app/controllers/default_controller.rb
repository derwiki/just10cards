class DefaultController < ApplicationController
  def show
    render
  end

  def cards
    @horizontal_divider = (['-' * 40] * 2).join('+')
    @card = params[:card].split("\r\n").map {|line| line.center(40)}
    while @card.size < 7 do
      @card << ' ' * 40
    end
    @tagline = (["just10cards.com".rjust(40)] * 2).join('|')
  end
end
