VeredApp::Application.routes.draw do
  resources :users
#  resources :posts
   resources :posts do
      resources :opinions
   end
   resources :members
#  get "users/new"
  get "pages/home"
  get "pages/about"
  get "pages/chemistry"
#  get "pages/blog"
#  get "pages/discussions"
  get "pages/other"
  get "posts/new"
  get "posts/create"
  get "/posts/show"
  get "posts/index"
#  match '/new' => 'users#new', via: [:post, :get]
  match '/index' => 'users#index', via: [:post, :get]
  match 'pages/discussions'  => 'users#index', via: [:post, :get]
  get "pages/discussions"
  match '/home' => 'pages#home', via: [:post, :get]
  match '/about' => 'pages#about', via: [:post, :get]
  match '/chemistry' => 'pages#chemistry', via: [:post, :get]
#  match '/discussions' => 'pages#discussions', via: [:post, :get]
  match '/other' => 'pages#other', via: [:post, :get]
  match 'pages/blog'  => 'posts#new', via: [:post, :get]



  root :to => 'pages#home'
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
