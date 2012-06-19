class PostsController < ApplicationController
  
  before_filter :find_board
  
  def new
    @post = Post.new
  end
  
  def create
    
    @post = @board.posts.build(params[:post])
    
    if @post.save
      redirect_to board_path(@board)
    else
      render :new
    end
  end
  
  protected
  
  def find_board
    @board = Board.find(params[:board_id])
  end
  
end
