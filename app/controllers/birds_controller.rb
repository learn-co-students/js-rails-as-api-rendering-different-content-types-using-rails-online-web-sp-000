class BirdsController < ApplicationController
  def index
    @irds = Bird.all
    render json: birds
  end
end
