require "lita"
require "net/http"
require "uri"
require "json"

module Lita
  module Handlers
    class Makeitrain < Handler
        route(/^makeitrain/, :makeitrain, command: true, help: { "makeitrain" => "displays gifs!"})

        def makeitrain(response)
            response.reply "http://f.cl.ly/items/2k1d1H270r0S1y0V1J2q/Will-MIR.gif"
        end
    end
    class JsonGifs < Handler
        route(/^(.*)/, :jsongifs, command: true, help: { "jsongifs" => "displays various gifs gifs!"})

        def jsongifs(response)
            res = Net::HTTP.get_response(URI('http://docs.crdsrg.net/jsongifs.json'))
            gifs = JSON.parse(res.body)
            if gifs.has_key?(response.matches[0][0])
                response.reply gifs[response.matches[0][0]]
            end
        end
    end
    Lita.register_handler(Makeitrain)
    Lita.register_handler(JsonGifs)
  end
end
