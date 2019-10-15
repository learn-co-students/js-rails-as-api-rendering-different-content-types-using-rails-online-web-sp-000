class BirdsController < ApplicationController
  def index
    render json: Bird.all
  end
end
