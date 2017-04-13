class MovesController < ApplicationController
  before_action :set_move, only: [:show, :edit, :update, :destroy]

  def index
    @moves = Move.all
  end

  def show
  end

  def new
    @move = Move.new
  end

  def edit
  end

  def create
    @move = Move.new(move_params)

    respond_to do |format|
      if @move.save
        format.html { redirect_to @move, notice: 'Le type a été créer avec succès.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @move.update(move_params)
        format.html { redirect_to @move, notice: 'Le type a été modifier avec succès.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @move.destroy
    respond_to do |format|
      format.html { redirect_to moves_url, notice: 'Le type a été supprimer avec succès.' }
    end
  end

  private
    def set_move
      @move = Move.find(params[:id])
    end

    def move_params
      params.require(:move).permit(:name, :description, :type_id)
    end
end
