class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "hello #{@birds[3].name}"
    render json: @birds
  end
end
