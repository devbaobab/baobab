Baobab::Application.routes.draw do
  
  resources :next_lectures

  resources :comments
  
  resources :admin_interfaces

  # resources :subscriptions

  # devise_for :users, :controller => { :registration => "devise_registration" }

  #routes.rb
  
    devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do
      get '/login' => 'devise/sessions#new'
      get '/logout' => 'devise/sessions#destroy'
  end
  resources :user, :controller => "user"
 
 

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
   root :to => 'mypages#show'
  #root :to => 'mypages#show'
  # root :to => 'subscriptions#new'
  match 'subscriptions' => 'subscriptions#create'
  match 'subscriptions/new' => 'subscriptions#new'
  
  match 'comments/lectures/create/:lecture_id/' => 'comments#create_comment', :as => :comment_lecture, :via => :post
  match 'comments/courses/create/:course_id/' => 'comments#create_comment', :as => :comment_course, :via => :post

  match 'comments/lectures/get/:lecture_id/' => 'comments#get_comments', :as => :get_comments_lecture, :via => :get
  match 'comments/courses/get/:course_id/' => 'comments#get_comments', :as => :get_comments_course, :via => :get
  
  
  
  # assign_url(:d => course.id)
  match 'courses/assign/:id' => 'mypages#assign', :as => :assign
  match 'courses/unassign/:id' => 'mypages#unassign', :as => :unassign
  match 'admininterface' => "admin_interfaces#index" 
  match 'give_auth' => "admin_interfaces#give_auth"
  
  
  
  match 'mypages' => 'mypages#show'
  match 'courses/play' => 'courses#play'
  
  resources :courses do
    resources :comments
  end
  
  #resources :lectures do
  #  resources :comments
  #end
  resources :categories
  
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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
