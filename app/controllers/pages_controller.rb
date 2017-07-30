class PagesController < ApplicationController
  def index
  end

  def home
    
    
    @posts = Post.all
  end

  def profile
    #grab the username from the URL and set it as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      #redirects to 404 / root for now
      redirect_to root_path, :notice => "User Not Found!"
      
    end
    
    @posts = Post.all.where("user_id=?", (User.find_by_username(params[:id])))
    @newPost = Post.new
    
  end

  def explore
    
    @posts = Post.all
  end
end
