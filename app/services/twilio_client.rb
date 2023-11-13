class TwilioClient
  TWILIO_FROM = '+14692511185'

  def initialize
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end
  
  def send_text(phone,body)
    @client.messages.create(
      from: TWILIO_FROM,
      to: phone,
      body: body
    )
  end

  private
    
    def account_sid
      Rails.application.credentials.twilio[:account_sid]
    end

    def auth_token
      Rails.application.credentials.twilio[:auth_token]
    end
end
