require "sinatra"

class ReaktorSlack < Sinatra::Base
  get "/thebeef" do
    content_type :json
    { 
      attachments: [
        {
          image_url: "http://i.imgur.com/asQ6Ijt.gif"
        }
      ] 
    }.to_json
  end

  post "/thebeef" do
    content_type :json
    { 
      attachments: [
        {
          image_url: "http://i.imgur.com/asQ6Ijt.gif"
        }
      ] 
    }.to_json
  end
end
