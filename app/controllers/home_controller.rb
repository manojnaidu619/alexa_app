class HomeController < ApplicationController
  def create
    @hello = 'first test'
    @out = {response: { outputSpeech: {type: 'SSML', ssml: "<speak>#{@hello}</speak>"}, shouldEndSession: true}, version: '1.0', sessionAttributes: {}}
    render json: @out
   end
end
