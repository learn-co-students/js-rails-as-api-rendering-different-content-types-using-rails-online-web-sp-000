class BirdsController < ApplicationController
  def index
    @birds = Bird.all

    # default Rails implicit render method
    # render 'birds/index.html.erb'

    # overwrite with plain text render method
    # render plain: "Hello #{ @birds[3].name }."

    # overwrite with JSON render method
    # the data that is passed along can be strings
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'

    # or hashes
    # render json: { message: "Hashes of data will get converted to JSON" }

    # or arrays
    # render json: ["As", "well", "as", "arrays"]

    # or other datatypes
    # render json: @birds

    # or nested datatypes
    render json: { birds: @birds, message: ["Hello Birds", "Goodybye Birds"] }
  end
end
