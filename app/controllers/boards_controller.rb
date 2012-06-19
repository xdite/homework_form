class BoardsController < ApplicationController
  
  before_filter :find_board, :except => [:new, :create, :index ]
  def new
    @board = Board.new
  end
  
  def create
    @board = Board.new(params[:board])
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end
  
  
  def index
    @boards = Board.all
  end
  
  def show
    @posts = @board.posts
  end
  
  def edit

  end
  
  def update

     if @board.update_attributes(params[:board])
       redirect_to boards_path
     else
       render :edit
     end
  end
  
  def destroy

    @board.destroy
    
    redirect_to :back
    
  end
  
  protected
  
  def find_board
    @board = Board.find(params[:id])
  end
end
