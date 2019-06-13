# frozen_string_literal: true

class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]
  before_action :all_duck, only: [:index]

  def index
    # @ducks = Duck.all
  end

  def show
    # byebug
    # @duck = Duck.find(params[:id])
  end

  def edit
    # @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.create(duck_params)
    if @duck.valid?
      redirect_to @duck
    else
      flash[:errors]= @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end

  def update
    # @duck = Duck.find(params[:id])
    @duck.update(duck_params)
    redirect_to @duck
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end

  def all_duck
    @ducks = Duck.all
  end
end
