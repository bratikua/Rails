class PostsController < ApplicationController
	def new
		
	end
	
	def show
		@post = Post.find(params[:id])
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)

		@post.save
		redirect_to @post
	end

	def index
		@post = Post.all
	end

	def about
		
	end

	private def post_params
			params.require(:post).permit(:title, :body)
	end
end
