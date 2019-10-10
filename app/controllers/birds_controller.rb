# Render Plain Text From a Controller
class BirdsController < ApplicationController
   def index
      @birds = Bird.all

      # render 'birds/index.html.erb'
      render plain: "Hello #{@birds[3].name}"
   end

end
# Hello Mourning Dove

# Render JSON From a Controller
class BirdsController < ApplicationController

   # specify json: followed by data that can be converted to valid JSON

   def index
      @birds = Bird.all
      render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
   end

   # OR

   def index
      @birds = Bird.all
      render json: { message: 'Hashes of data will get converted to JSON' }
   end

   # OR

   def index
      @birds = Bird.all
      render json: ['As','well','as','arrays']
   end

   # OR

   def index
      @birds = Bird.all
      render json: @birds
   end

   # OR

   # Detailed Nesting
   def index
     @birds = Bird.all
     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
   end

end

# fetch('http://localhost:3000/birds').then(response => response.json()).then(object => console.log(object))
#> Hello Mourning Dove

# fetch('http://localhost:3000/birds').then(response => response.json()).then(object => console.log(object))
#> [{…}, {…}, {…}, {…}]


# Converting Data to JSON
class BirdsController < ApplicationController

   def index
      @birds = Bird.all
      render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
   end

end
