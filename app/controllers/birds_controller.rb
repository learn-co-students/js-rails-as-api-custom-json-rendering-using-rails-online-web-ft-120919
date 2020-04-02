class BirdsController < ApplicationController
  def index
    birds = Bird.all
    #render json: birds
    #render json: birds, only: [:id, :name, :species]
    render json: birds, except: [:created_at, :updated_at] # produces same result as the above code in line 5
    #render json: birds.to_json(except: [:created_at, :updated_at]) - same as above
  end

  def show
    bird = Bird.find_by(id: params[:id])
    #render json: {id: bird.id, name: bird.name, species: bird.species} 
    if bird
      render json: bird.slice(:id, :name, :species)
    else
      render json: { message: 'Bird not found' }
    end


  end
end