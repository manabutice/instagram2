class PostsController < ApplicationController

  def new
   @post = Post.new
   @posts = photos.build
  end

  def create
    @post = Post.new(post_params)
    if @post.photos.present?
      @post.save
      redirect_to root_path
      flash[:notice] =  "投稿が保存されました"

end
