class HomeController < ApplicationController
  #before_action :validate_request
  #skip_before_action :verify_authenticity_token, only: [:posting]
  def posting
    #if AlexaVerifier::InvalidCertificateURIError #or AlexaVerifier::InvalidCertificateError or AlexaVerifier::InvalidRequestError
    #  render json: {message: 'Not verified'}, status: :unprocessable_entity
    #else
    @sign_cert = request.headers['SignatureCertChainUrl'].to_s
    @sign = request.headers['Signature'].to_s
    if ( @sign_cert and @sign and @sign_cert == 'https://s3.amazonaws.com/echo.api/echo-api-cert-6-ats.pem' ){
      @pickuplines = [
      'Are you sure you’re not tired? You’ve been running through my mind all day.',
      'I must be in a museum, because you truly are a work of art.',
      "Thank god I'm wearing gloves because you are too hot to handle.",
      "If a fat man puts you in a bag at night, don't worry I told Santa I wanted you for Christmas.",
      'Are you a 90 degree angle? Cause you are looking right!',
      'Your hand looks heavy. Here, let me hold it for you!',
      "If looks could kill, you'd be a weapon of mass destruction.",
      'Do you have a tan, or do you always look this hot?',
      "If you were a fruit you'd be a fineapple.",
      "Did you swallow magnets? Cause you're attractive.",
      'You must be a ninja, because you snuck into my heart',
      "Did you hear of the new disease called beautiful, I think you're infected.",
      "If you were a vegetable you'd be a cutecumber.",
      "Did your licence get suspended for driving all these guys crazy?",
      "You’re so sweet, you’re giving me a toothache.",
      "If I could rearrange the alphabet, I’d put U and I together.",
      'Excuse me, would you like a raisin? No? How about a date then?',
      "Besides being drop-dead gorgeous, what do you do for a living?",
      "Let’s commit the perfect crime. I’ll steal your heart, and you steal mine.",
      "Excuse me… Do you have a pen?. Good, write down my number.",
      "I would offer you a coffee, but you’re already smokin’ hot.",
      "Are you a hurricane? Because you’re blowing me away.",
      "You dropped something. My jaw!",
      "If you were a flower you’d be a daaaaaamnnn-delion.",
      "If your heart was a prison, I would like to be sentenced for life.",
      "Are you parents bakers? Because you are a cutie pie.",
      "Stand still. so I can pick you up!",
      "You shouldn’t wear makeup. It’s messing with perfection",
      "When God made you, he was showing off",
      " Would you hold my hand, while I go for a walk?",
      "You’re so hot, you’d make the devil sweat",
      "Excuse me, could you please dial down your hotness. it’s causing global warming",
      "I’m learning about important dates in history. Wanna be one of them?",
      "Have you been covered in bees recently?. I just assumed, because you look sweeter than honey.",
      "Let me guess, your middle name is Gillette, right?. Because you’re the best a man can get.",
      "There's side view, rear view and you know what else?. I loview.",
      "I value my breath so it would be nice if you didn't take it away every time you walked past.",
      "If nothing lasts forever, will you be my nothing?",
      "Nice to meet you, I’m victim and you are... gorgeous!",
      "Is there an airport nearby or is it my heart taking off?",
      "If my heart were to fly, your soul would be my airport.",
      "Your tag is showing, it says made in heaven.",
      "I never believed in heaven until I saw you.",
      "You are so sweet you could put Hershey’s out of business.",
      "Am I at the end of a rainbow? I just found treasure.",
      "The only thing your eyes haven’t told me is your name.",
      "What’s wrong? You’re looking a little sad and gloomy. What you need is some Vitamin me.",
      "How about you come live in my heart and pay no rent?",
      "Are you lost?. Because heaven’s a long way of here.",
      "Excuse me, I think you have something in your eye. Oh wait, it’s just a sparkle.",
      "I am going to complain to Spotify about you not being this weeks hottest single.",
      "Are you a volcano?. Because i lava you",
      "Are you netflix?. Because i could watch you for hours.",
      "Are you the sun?. Because you’re so beautiful it’s blinding me.",
      "Are you from Russia? ‘Cause you’re russian my heart rate!"
    ]
    @line = @pickuplines.sample
      @output = {
    "response": {
      "outputSpeech": {
        "type": "PlainText",
        "text": @line
      },

      "shouldEndSession": true
    },
    "version": "1.0",
    "sessionAttributes": {}
    }
      render json: @output
    }
  else{
      render json: {message: 'Not verified'}, status: :unprocessable_entity
     }

    #request.headers['SignatureCertChainUrl']
    #logger.info('SignatureCertChainUrl' + request.headers['SignatureCertChainUrl'].to_s)
    #logger.info('Signature' + request.headers['Signature'].to_s)

   #end
 end

   #def validate_request
    # render json: {message: 'Not accessible'}, status: 403 unless request.body.read
     #puts request.raw_post
   #end
end
