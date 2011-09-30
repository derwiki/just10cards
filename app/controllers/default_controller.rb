class DefaultController < ApplicationController
  def show
    #redirect_to cards_default_url
    redirect_to "/cards"
    return
  end

  def cards
     @card = "This is the card"
  end
end
