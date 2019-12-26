class BirdsController < ApplicationController
  
  # def index
  #   @birds = Bird.all
  #   render plain: 'birds/index.html.erb'
  # end

  # def index
  #   @birds = Bird.all
  #   render plain: "Hello #{@birds[3].name}"
  # end

  # def index
  #   @birds = Bird.all
  #   render json: { message: 'Hashes of data will get converted to JSON' }
  # end

  # def index
  #   @birds = Bird.all
  #   render json: ['As','well','as','arrays']
  # end

  # def index
  #   @birds = Bird.all
  #   render json: @birds
  # end

  def index
    birds = Bird.all
    render json: birds
  end

end
