class DefaultController < ApplicationController
  def show
    render
  end

  def cards
    @card = params[:card].split("\r\n").map {|line| line.center(40)}
    @horizontal_divider = "+#{(['-' * 40] * 2).join('+')}+\n"
  end
end
