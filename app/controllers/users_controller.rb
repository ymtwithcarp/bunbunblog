class UsersController < ApplicationController
	def show
		blogs = User.find(params[:id]).blogs.order("created_at DESC")
	end
end
