class AddAttributesToPokemons < ActiveRecord::Migration[5.0]
  def change
  	add column :pokemons, :number, :integer
  	add column :pokemons, :level, :integer
  	add column :pokemons, :health_points, :integer
  end
end
