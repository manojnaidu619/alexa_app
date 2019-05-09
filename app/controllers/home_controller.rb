class HomeController < ApplicationController
  def create
    @output = {
  "response": {
    "outputSpeech": {
      "type": "PlainText",
      "text": Iss.track
    },

    "shouldEndSession": true
  },
  "version": "1.0",
  "sessionAttributes": {}
}
    render json: @output
   end
end
