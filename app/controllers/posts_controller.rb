class PostsController < ApplicationController
  # postHeleper for DRY Principle
  include PostsHelper

   # get all posts from db
  def index
  @post = Post.all
  end
  
  # show posts 
  def show 
    getPost(params[:id])

  end
  
  #prepare to new post
  def new 
     @post = Post.new
  end


    # Create new post by specific params send via post Request
    # this params validated in post model and must be permited for mass assignment

  def create
    #render plain: params[:post].inspect
    @post = Post.new(post_params)
    
    if (@post.save)    
     redirect_to @post
    else
    	render :new
    end

  end

  def edit
    getPost(params[:id])

  end

  def update
         
     if( getPost(params[:id]).update(post_params) )
      redirect_to @post
     else
       render 'edit'
     end
     
  end

  def destroy
     getPost(params[:id]).destroy
     redirect_to posts_path  

  end

  # make sent params valid for mass assignment
  
  private def post_params
       params.require(:post).permit(:title,:body)
  end


end
