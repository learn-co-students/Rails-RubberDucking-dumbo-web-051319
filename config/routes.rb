Rails.application.routes.draw do
  resources :ducks
  # , only: [:index, :new, :show, :edit, :create, :destroy, :update]
  resources :students
  # , only: [:index, :new, :show, :edit, :create, :destroy, :update]
end
