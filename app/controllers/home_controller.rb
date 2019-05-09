class HomeController < ApplicationController
  def create
    @output = {
  "response": {
    "outputSpeech": {
      "type": "SSML",
      "ssml": "<speak>'#{Iss.track}'</speak>"
    },

    "shouldEndSession": true
  },
  "version": "1.0",
  "sessionAttributes": {}
}
    render json: @output
   end
end
