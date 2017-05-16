class HomeController < ApplicationController
  def index
  end
  
  def write
    
  @one_post = Post.new
  @one_post.title = params[:title]
  @one_post.content = params[:content]
  @one_post.save
  
  redirect_to "/home/list"
  end
  
  def list
  @every_post = Post.all
  end
  
  def reply_ok
    
    @reply = Reply.new
    @reply.comment = params[:comment]
    @reply.post_id = params[:post_id]
    @reply.save
    
    redirect_to :back
  end
end
