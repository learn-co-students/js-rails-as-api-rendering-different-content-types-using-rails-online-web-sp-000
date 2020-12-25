class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: 'Remember that JSON is just object notation converted to string data, sostringsalso work here'
  end
end

