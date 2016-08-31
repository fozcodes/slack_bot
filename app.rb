require "sinatra"

class ReaktorSlack < Sinatra::Base
  get "/thebeef" do
    content_type :json
    get_the_beef
  end

  post "/thebeef" do
    content_type :json
    get_the_beef
  end

  private

  def get_the_beef
    { 
      response_type: "in_channel",
      attachments: [
        {
          text: "A standing f***ing ovation for you.",
          image_url: "https://s3.amazonaws.com/codeguy-slackbot/images/ezgif.com-resize.gif"
        }
      ] 
    }.to_json
  end
end
