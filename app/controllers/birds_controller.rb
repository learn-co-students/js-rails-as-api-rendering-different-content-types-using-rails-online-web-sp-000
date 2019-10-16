# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render 'birds/index.html.erb'
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render plain: "Hello #{@birds[3].name}"
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { message: 'Hashes of data will get converted to JSON' }
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: ['As','well','as','arrays']
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: @birds
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
#   end
# end

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
  end
end