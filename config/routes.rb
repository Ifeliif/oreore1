Rails.application.routes.draw do

  get 'stat/index'

  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/create'
  
  get 'buy' => 'books/buy'
  
  get 'friendship/create'

  get 'friendship/new'
    
  resources :tweets
  resources :comments
  resource :session, only: [:create, :destroy]
  resources :users
  resource :friendship
  resources :buyings
  resources :books do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  
  post 'users/search'  

  get 'top/index'

  get 'top/about'
  
  root 'top#index'
    
  get 'about' => 'top#about'
  
  get 'locale' => 'top#locale', as: 'locale'
  
  get 'friendship/accept'
  
  get 'friendship/reject'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
