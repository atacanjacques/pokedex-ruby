class PokemonsController < ApplicationController
	def index
		@pokemons = Pokemon.all
	end

	def show
		@pokemon = Pokemon.find params[:id]
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new params.require(:pokemon).permit(:name)
		if @pokemon.save
			redirect_to @pokemon
		else
			render 'new'
		end
	end

	def edit
		@pokemon = Pokemon.find params[:id]
	end

	def update
		@pokemon = Pokemon.find params[:id]
		if @pokemon.update params.require(:pokemon).permit(:name)
			redirect_to @pokemon
		else
			render 'edit'
		end
	end
end