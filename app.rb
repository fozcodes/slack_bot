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

  #TODO: More is more, danger zone
end
