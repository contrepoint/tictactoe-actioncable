class BoardsController < ApplicationController
  def show
    @board = Board.find(params[:id]).state.split('')
  end
end
