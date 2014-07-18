require "lita"
require "net/http"
require "uri"

module Lita
  module Handlers
    class Makeitrain < Handler
        route(/^makeitrain/, :makeitrain, command: true, help: { "makeitrain" => "displays gifs!"})

        def makeitrain(response)
            response.reply "http://f.cl.ly/items/2k1d1H270r0S1y0V1J2q/Will-MIR.gif"

        end
    end
    Lita.register_handler(Makeitrain)
  end
end
