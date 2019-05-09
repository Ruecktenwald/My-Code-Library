class PostsController < ApplicationController
	before_action :set_post, only: [:show,:edit,:destroy]
	
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save 
			redirect_to @post, notice: "You successfully created a new post!"
		else
			render :new
		end
	end

	def show	
	end
end


private

def post_params
	params.require(:post).permit(:category,:description,:code)
end

def set_post
	@post = Post.find(params[:id])
end