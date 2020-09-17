#RAILS CAN RENDER JSON! INDEPENDENT JAVASCRIPT FRONTENDS THAT COMMUNICATE W RAILS BACKENDS!
class BirdsController < ApplicationController
  def index
   # @birds = Bird.all no more instance variables! 
   birds = Bird.all
    #render json: @birds #rendering json from a rails controller, but instance variables are no longer needed, only when rendering to ERB
   # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] } #detailed nesting
   render json: birds #local variable!
  end 
end 




#index aaction rendered all birds

#render plain: "Hello #{@birds[3].name}" renders Hello Mourning Dove in the browser

#adding .to_json at the end will convert our array to a hash 

