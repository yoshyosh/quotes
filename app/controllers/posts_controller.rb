class PostsController < ApplicationController
	
	def index
		@posts = Post.all
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @posts }
		end
	end
	
	def new
		@post = Post.new
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @post }
		end
	end
	
	def create
		@post = Post.new(params[:post])
		
		respond_to do |format|
			if @post.save
				format.html { redirect_to(@post,
										:notice => 'Post was successfully created.') }
				format.xml { render :xml => @post,
										:status => :created, :location => @post }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @post.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@post = Post.find(params[:id])
		
		respond_to do |format|
			format.html #show.html.erb
			format.xml { render :xml => @post }
		end
	end
	
end
