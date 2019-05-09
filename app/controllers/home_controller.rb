class HomeController < ApplicationController
  def index
    @hello = 'first test line'
    @out = {'version': '1.0', 'response': { 'outputSpeech': {'type': 'PlainText', 'text': @hello}}}
    render json: @out
   end
end
