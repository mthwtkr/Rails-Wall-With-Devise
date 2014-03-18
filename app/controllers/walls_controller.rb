class WallsController < ApplicationController
  def index
  	@message = Message.new
  	@comment = Comment.new

  	@users = User.all
  	@messages = Message.all.order(created_at: :desc)
  	@comments = Comment.all.order(created_at: :asc)
  end
end
