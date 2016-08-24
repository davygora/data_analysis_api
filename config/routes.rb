Rails.application.routes.draw do
  devise_for :users

  namespace :api, dafaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy] #defaults: { format: 'json' }
    end
  end
  # namespace :api, defaults: { format: :json},
  #   constraints: { subdomain: 'api'}, path: '/' do
  #     scope module: :v1 do
  #       resources :users, :only => [:show]
  #     end
  # end
end
