class CommentsController < ApplicationController
	def new
	end

	def create
		@comment = Message.find(params[:comment][:message_id]).comments.new(comment_params)
		@comment.user = User.find(current_user.id)
		if @comment.save
			redirect_to walls_path, notice: "Comment was successfully created."
		else
			render action: "walls#index"
		end
	end

	private
		def set_comment
			@comment = Comment.find(params[:id])
		end

		def comment_params
			params.require(:comment).permit(:content)
		end
end