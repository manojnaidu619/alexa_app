class HomeController < ApplicationController
  def create
    @a = {
  "response": {
    "outputSpeech": {
      "type": "SSML",
      "ssml": "<speak>Welcome to the Alexa Skills Kit, you can say hello</speak>"
    },

    "shouldEndSession": true
  },
  "version": "1.0",
  "sessionAttributes": {}
}
    render json: @a
   end
end
