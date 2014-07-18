require "lita"
require "net/http"
require "uri"

module Lita
  module Handlers
    class Makeitrain <Handler
        route(/^makeitrain/, :makeitrain, command: true, help: { "makeitrain" => "displays gifs!"})

        def makeitrain(response)
            res = Net::HTTP.get_response(URI('http://f.cl.ly/items/2k1d1H270r0S1y0V1J2q/Will-MIR.gif'))
            response.reply(res['location'])

        end
    end
    Lita.register_handler(Makeitrain)
  end
end
