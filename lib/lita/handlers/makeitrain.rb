require "lita"
require "net/http"
require "uri"

module Lita
  module Handlers
    class Makeitrain <Handler
        route(/^makeitrain/, :makeitrain, command: true, help: { "makeitrain" => "displays gifs!"})

        def makeitrain(response)
            res = Net::HTTP.get_response(URI('http://cl.ly/image/2D180p0N2919'))
            response.reply(res['location'])

        end
    end
    Lita.register_handler(Makeitrain)
  end
end
