class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
    .to_json
  end
end
