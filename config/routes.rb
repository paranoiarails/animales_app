Pruebaanimales3::Application.routes.draw do
  resources :especies

  resources :searches

  get "searches/new"

  resources :probas

  resources :pers

  resources :tareas

  resources :perfils_zonas

  resources :ocupacions

  resources :perfils

  resources :relacion_animals

  resources :chenils

  resources :zonas

  resources :especies

  ######## mal   get "zonas/coord"

  get "sessions/new"

  resources :animals
  resources :personas
  resources :sessions, :only => [:new, :create, :destroy]

get "personas/new"



  match 'ad_per', :to => 'probas#ad_per#id'

  match 'add_foto', :to =>'animals#add_foto#id'

#match '/animales', :to=> 'animals' 

match 'zona', :to => 'animals#zona'

#match 'creardino', :to => 'dinas#creardino#id'

match 'creardina', :to => 'dinos#creardina#id'
match '/dinas/new', :to => 'dinas#new#id'

match 'ad_perfil', :to => 'personas#ad_perfil#id'

match 'new_perf', :to => 'personas#new_perf#id'

match 'cheniles', :to => 'zonas#cheniles#id'
match 'coordz', :to => 'zonas#coord'
match 'coordchen', :to => 'chenils#coordchen'

match 'relaciones/:id', :to => 'animals#relaciones'

match 'moverfin/:id/:id', :to => 'animals#moverfin#id1#id2' 

match 'relacionesXanimal/:id', :to => 'animals#relacionesXanimal'
match 'mover/:id', :to => 'animals#mover'

match '/signup', :to => 'personas#new'
match '/signin', :to => 'sessions#new'
match '/signout', :to => 'sessions#destroy'

#animales new, para guardar zona.id
  match 'animals/new/:id', :to => 'animals#new#id' 
####################################################





match '/contact', :to => 'pages#contact'
#match '/', :to => 'pages#home'


match '/home', :to => 'pages#home'
root :to => 'pages#home'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
