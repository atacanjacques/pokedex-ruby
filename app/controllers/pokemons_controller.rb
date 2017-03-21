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
end