class MessageMailer < ApplicationMailer
  require 'mailgun'

  # def contact_me(message)
  #   @body = message.body
  #   mg_client = Mailgun::Client.new ENV['mailgun_api_key']
  #   message_params = {:from => message.email,
  #                     :to => ENV['email'],
  #                     :subject => 'Message from tylerjfay.com',
  #                     :text => message.body}
  #   mg_client.send_message ENV['mailgun_domain'], message_params
  # end

  def contact_me(message)
    @message = message
    mail to: ENV['email'], subject: "Message from TylerJFay.com!"
  end
end
