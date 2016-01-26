class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:name], params[:email], params[:message])

    if @message.valid?
      # MessageMailer.new_message(@message.name, @message.email, @message.message).deliver
      SendContactEmailJob.new(@message.name, @message.email, @message.message).enqueue(wait: 10.seconds)
      respond_to do |format|
        format.json { render json: { notice: "Your messages has been sent." }, status: :ok }
        format.js { render :layout => false }
      end
    else
      respond_to do |format|
        format.json { render json: { error: "Your messages has not been sent." }, status: :unprocessable_entity }
        format.js { render :layout => false }
      end
    end
  end
end