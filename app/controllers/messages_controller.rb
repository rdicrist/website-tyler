class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|

      if @message.valid?
        MessageMailer.contact_me(@message).deliver
        format.html { redirect_to home_index_url, success: 'Thanks for your message!'}
        format.json { render :new, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end

    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
