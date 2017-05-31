Rails.application.routes.draw do

  devise_for :users
  root 'home#main_list'

  get 'home/main_list'
  get "/home/index"
  post "/home/write"
  get "/home/list"
  post  "/home/main"

  get 'home/detail'
  get 'home/detail/:id' => 'home#detail'
  
  get '/content' => "home#content"
  get '/content/:id' => "home#content"

  get '/delete' => 'home#delete'
  get '/delete/:id' => 'home#delete'

  get '/edit' => 'home#edit'
  get '/edit/:id' => 'home#edit'
  
  post '/edit_2/:id' => 'home#edit_2'

  post 'home/reply_ok/:id' => 'home#reply_ok'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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