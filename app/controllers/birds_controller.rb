class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
 
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird
  # end
  Filtering out unwanted data 
  def show
  bird = Bird.find_by(id: params[:id])
  render json: {id: bird.id, name: bird.name, species: bird.species } 
end
end