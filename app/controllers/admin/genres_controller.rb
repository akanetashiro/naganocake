class Admin::GenresController < ApplicationController
  
  before_action :is_matching_login_user, only: [:edit, :update]
  
  def new
    @genre = Genre.new
  end 
  
  def create
    @genre = Genre.new(genre.params)
    genre.save
    redirect_to :index
  end 
  
  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params.id)
  end
  
  def update
    @genre = Genre.find(params.id)
    @genre.update(genre_params)
    redirect_to :index
  end 
  
  private
  
  def genre_params
    params.require(:name)
  end
  
  def is_matching_login_user
    @genre = Genre.find(params[:id])
    if(@genre.user != current_user)
      redirect_to root_path
    end
  end
  
end
