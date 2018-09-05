class CardsController < ApplicationController 
  def create 
    @card = Card.new
    if @card.save 
    else 
      console.log("card can not be saved")
    end 
  end
end