class MessagesController < ApplicationController
	def new
	end

	def create
		@message = User.find(current_user.id).messages.new(message_params)
		if @message.save
			redirect_to walls_path, notice: "Message was successfully created."
		else
			render action: "wall#index"
		end
	end

	private
		def set_message
			@message = Message.find(params[:id])
		end

		def message_params
			params.require(:message).permit(:content)
		end
end
