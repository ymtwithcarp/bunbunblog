class BlogsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@blogs = Blog.all.order("created_at DESC")
	end

	def new
		@blog = Blog.new
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def create
		Blog.create(text: blog_params[:text], title: blog_params[:title], user_id: current_user.id)
	end

	def edit
		blog = Blog.find(params[:id])
	end

	def update
		blog = Blog.find(params[:id])
	end

	def destroy
		blog = Blog.find(params[:id])
		blog.destroy
	end

	private
	def blog_params
		params.permit(:text, :title)
	end
end
