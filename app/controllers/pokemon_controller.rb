!class PokemonController < ApplicationController
	def capture
		 p = Pokemon.find(params[:id])
		 p.trainer_id = current_trainer.id
		 p.save
		 redirect_to "/"
	end
	def kill
		p = Pokemon.find(params[:id])
			if p.health <= 0
	   			p.destroy
			else
	   			p.health = p.health - 10
	   			p.save
	   			redirect_to trainer_path(id: current_trainer)
			end
	end
	def new 
   		
	end
	def create
		@pokemon =Pokemon.new(name: params[:pokemon][:name], ndex: params[:pokemon][:ndex], health: 100, level: 1)
		@pokemon.trainer_id = current_trainer.id
	    if @pokemon.save
	    	redirect_to trainer_path(id: current_trainer)
	    else 
	    	flash[:error] = @pokemon.errors.full_messages.to_sentence
	    	redirect_to "/pokemon/new"
	   	end
	end
end