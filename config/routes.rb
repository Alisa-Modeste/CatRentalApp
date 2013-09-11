NinetyNineCats::Application.routes.draw do
  resources :cats #, only: [:index, :show, :create, :new, :edit, :update]
end

