class PersonsController < ApplicationController
  def new
  end

  def show
    @actors = Actor.all
    @directors = Director.all
  end

  def create
    rol = params[:rol]
    if rol == 'actor'
      @actor = Actor.new(first_name: params[:first_name], name: params[:name], birth_date: params[:birth_date], description: params[:description])
      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    else
      @director = Director.new(first_name: params[:first_name], name: params[:name], birth_date: params[:birth_date], description: params[:description])
      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    end
  end



  def actor_params
    params.permit(:first_name, :name, :birth_date, :description)
  end

  def director_params
    params.permit(:first_name, :name, :birth_date, :description)
  end



end
