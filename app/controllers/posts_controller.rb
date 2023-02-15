class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
  end

  def create
    @posts = Post.new
    @posts["author"] = params["posts"]["author"]
    @posts["body"] = params["posts"]["body"]
    @posts["image"] = params["posts"]["image"]
    @posts.save
    redirect_to "/posts"
  end

  def destroy
    #find post find_by
    #post.destroy
    #redirect
  end

end
