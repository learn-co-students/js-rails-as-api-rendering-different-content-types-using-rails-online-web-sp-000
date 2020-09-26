class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"
    # render json: @birds
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    # .to_json converts array or hash to json, but rails parses data for us 

    # we can get rid of instance variables because those are created in erb 
    birds = Bird.all 
    render json: birds
  end

end
