require "spec_helper"
require "uri"

describe Lita::Handlers::Makeitrain, lita_handler: true do
  it { routes_command("makeitrain").to(:makeitrain) }

  describe "makeitrain" do
    it "should return a url" do
      send_command("makeitrain")
      expect(replies.last).to match(URI.regexp)
    end
  end

  
end
describe Lita::Handlers::JsonGifs, lita_handler: true do
  it { routes_command("test").to(:jsongifs) }

  describe "jsongifs" do
    it "should return a url" do
      send_command("test")
      expect(replies.last).to match('found')
    end
  end
end
