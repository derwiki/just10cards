CARD_HEIGHT = 7 # number of rows per card
CARD_WIDTH = 40 # width in chars of each card
CARD_COLS = 2 # number of cards per row in layout
CARD_ROWS = 5 # number of rows of cards in layout

class DefaultController < ApplicationController
  def show
    render
  end

  def cards
    @card = params[:card].split "\r\n"
    while @card.size < CARD_HEIGHT do
      @card << ' '
    end
    @card = @card.map do |line|
      ([line.center(CARD_WIDTH)] * CARD_COLS).join('|')
    end

    @horizontal_divider = (['-' * CARD_WIDTH] * CARD_COLS).join('+')
    @tagline = (["just10cards.com".rjust(CARD_WIDTH)] * CARD_COLS).join('|')
  end
end
