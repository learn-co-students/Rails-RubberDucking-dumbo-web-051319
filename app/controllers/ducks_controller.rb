class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :delete]


  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.create(duck_params)
    if @duck.valid?
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def show

  end

  def edit
    @ducks = Duck.all
  end

  def update
    @duck.update(duck_params)
    redirect_to duck_path
  end

  def delete
  end

  def destroy
  end

  private

  def find_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
