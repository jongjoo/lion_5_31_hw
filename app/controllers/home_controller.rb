class HomeController < ApplicationController

  def delete
        
      @one_post = Post.find(params[:id])
      @one_post.destroy
        
      redirect_to "/list"
  end
  def edit
        
        @one_post = Post.find(params[:id])
  end
    #$$
  def edit_2
        
        @one_post = Post.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save
        
        redirect_to '/home/main_list'
  end

  def detail
    @one_post = Post.find(params[:id])
    @one_post.hit += 1
    @one_post.save
  end
  
  def main_list
    if user_signed_in?
      @email = current_user.email
    end
    @all_post = Post.all
    @all_Log = Log.all
  end
  def index
  
  
  end
  
  def main
  
  @log = Log.new
  @log.user = params[:user]
  @log.user = params[:password]
  
  end

  
  def write
    
  @one_post = Post.new
  @one_post.title = params[:title]
  @one_post.content = params[:content]
  @one_post.user = current_user.email
  @one_post.hit = 0
  
    if @one_post.save
        redirect_to "/home/main_list"
    else  
        render :text => @one_post.errors.messages[:title][0]
    end
  end
  
  
  def list
  @every_post = Post.all
  end
  
  def reply_ok
    
    @reply = Reply.new
    @reply.comment = params[:reply]
    @reply.post_id = params[:post_id]
    if @reply.save
      redirect_to :back
    else
      render :text => @reply.errors.messages
    end
  end

  def reply_del
    @reply = Comment.find(params[:id])
    @reply.destroy
    
    redirect_to :back
  end
  
end
