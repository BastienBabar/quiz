class MessageMailer < ApplicationMailer
  def new_message(name, email, message)
    @name = name
    @email = email
    @message = message

    mail subject: "Message from #{@name} on bastienbarbé !", from: @email
  end
end
