class BirdsController < ApplicationController
  def index

    #no longer need instance variables @birds when rendering to json
    birds = Bird.all

    #@birds = Bird.all
    #render json: @birds
    #more detailed nesting:
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] } #added a messages key to end of birds key
   end
end
