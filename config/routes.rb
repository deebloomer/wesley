Depot::Application.routes.draw do

  get 'thanks' => 'thanks#index'
  get 'admin' => 'admin#index'
=begin
  get 'route_detail' => 'route_detail#index'
  get 'route_schedule' => 'route_schedule#index'
  get 'ticket_price' => 'ticket_price#index'
=end
  get 'pages_about' => 'pages#about'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy

  end
  match '/about' => "pages#about"
  match '/events' => "pages#events"
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"


  resources :carts
  resources :line_items
  resources :orders

  resources :routes
  resources :route_details
  resources :route_schedules
  resources :tickets
  resources :ticket_prices
  resources :users #same at tut
  resources :pages

  resources :products do
    get :who_bought, on: :member
  end

  #get "route_details/index"
  #get "route_schedule/index"
  get "store/index"
  get "store/show"
  match "search_request" => "store#search_results", :as => :search_request, :method => :post  #Dan

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
  root :to => 'store#index'#, as: 'store'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
