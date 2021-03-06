Rails.application.routes.draw do
  root 'home#index'
  resources :remote_tournaments, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  resources :schedules, only: [:create, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :edit]
  resources :tournament_invites, only: [:index, :edit]
  resources :tournament_teams, only: [:new, :create]
  resources :facilities, only: [:show, :edit, :update, :index]
  resources :facility_availabilities, only: [:new, :create, :edit, :update]
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]
  resources :game_requests, only: [:show, :new, :create, :edit, :update, :index]
  resources :notifications, only: [:index, :edit]
  resources :active_requests, only: [:new, :create, :edit, :update]

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
