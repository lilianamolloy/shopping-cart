Rails.application.routes.draw do
  root "products#index"

  resource :cart, only: [:update, :show, :destroy]
end
