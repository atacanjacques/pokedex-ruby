class PokemonsController < ApplicationController
	before_action :set_pokemon, only: [:show, :edit, :update, :destroy]

	def index
		@pokemons = Pokemon.all
	end

	def show
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new pokemon_params
		if @pokemon.save
			redirect_to @pokemon
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @pokemon.update pokemon_params
			redirect_to @pokemon
		else
			render 'edit'
		end
	end

	def destroy
		@pokemon.destroy
		redirect_to pokemons_path
	end

	private

	def set_pokemon
		@pokemon = Pokemon.find params[:id]
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end