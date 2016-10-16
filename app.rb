require "sinatra"

class ReaktorSlack < Sinatra::Base
  get "/thebeef" do
    content_type :json
    {
      response_type: "in_channel",
      attachments: [
        {
          text: "A standing f***ing ovation for you.",
          image_url: "https://s3.amazonaws.com/codeguy-slackbot/images/ezgif.com-optimize.gif"
        }
      ]
    }.to_json
  end

  get "/beers" do
    content_type :json
    {
      response_type: "in_channel",
      attachments: [
        {
          text: "Beer. Now.",
          image_url: "https://s3.amazonaws.com/codeguy-slackbot/images/beer.gif"
        }
      ]
    }.to_json
  end

  get "/turku" do
    content_type :json
    {
      response_type: "in_channel",
      attachments: [
        {
          text: "Hey, Turku!",
          image_url: "https://s3.amazonaws.com/codeguy-slackbot/images/turku.jpg"
        }
      ]
    }.to_json
  end
  #TODO: More is more, danger zone
end
