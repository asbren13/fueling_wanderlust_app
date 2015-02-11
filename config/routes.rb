Rails.application.routes.draw do
  root 'welcome#index'
  resources :cities do
    resources :suggestions, only: [:index, :show, :new, :create] do
      resources :comments, only: [:index, :show, :new, :create]
    end
  end
end
