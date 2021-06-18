class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  
  ## fetch("http://localhosT:3000/birds")
##  .then(response => response.json())
##  .then(json => console.log(json))
end
