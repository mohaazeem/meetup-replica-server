Rails.application.routes.draw do

  get 'comments/new'

  get 'comments/create'

  resources :communities, except: [:edit, :update, :destroy]

  resources :events, except: [:edit, :update, :destroy]

  resources :posts, only: [:show]

  resources :users, except: [:index, :edit, :update, :destroy]

  resources :comments, only: [:new]

  get 'communities/:community_id/new_post' => 'posts#new_comm', :as => 'comm_new_post'
  post 'communities/:community_id/new_post' => 'posts#create_comm', :as => 'comm_post'

  get 'events/:event_id/new_post' => 'posts#new_event', :as => 'event_new_post'
  post 'events/:event_id/new_post' => 'posts#create_event', :as => 'event_post'

  get 'users/:user_id/new_post' => 'posts#new_user', :as => 'user_new_post'
  post 'users/:user_id/new_post' => 'posts#create_user', :as => 'user_post'

  post 'communities/:community_id/join' => 'communities#join_community', :as => 'join_community'
  post 'communities/:community_id/leave' => 'communities#leave_community', :as => 'leave_community'

  post 'events/:event_id/going' => 'events#rsvp_going', :as => 'rsvp_going'
  post 'events/:event_id/not_going' => 'events#rsvp_notGoing', :as => 'rsvp_notGoing'

  post 'users/:user_id/add_friend' => 'users#add_friend', :as => 'add_friend'
  post 'users/:user_id/remove_friend' => 'users#remove_friend', :as => 'remove_friend'

  post '/users/:user_id/accept_request/:request_id' => 'users#accept_request', :as => 'accept_request'
  post '/users/:user_id/reject_request/:request_id' => 'users#reject_request', :as => 'reject_request'

  get '/users/:user_id/requests/' => 'users#requests', :as => 'requests'

  post '/posts/:id/' => 'comments#create', :as => 'create_comment'

  # Facebook
  get 'auth/:provider/callback', to: 'sessions#create'
  #get 'logout', to: 'sessions#destroy'

  post 'login/create' => 'login#create'
  get 'logout' => 'login#destroy'

  get 'login/login' => 'login#login'

  root 'login#login'

  # ///////////////////////////////////////////////////////////////

  # API
  namespace :api, defaults: { format: :json } do
    resources :comments, only: :create

    resources :communities, except: [:new, :edit]

    resources :events, only: [:index, :show, :create]

    resources :posts, only: [:show]

    resources :users, only: [:index, :show, :create]

    patch 'events/:event_id/going' => 'events#rsvp_going', :as => 'rsvp_going'
    patch 'events/:event_id/not_going' => 'events#rsvp_notGoing', :as => 'rsvp_notGoing'

    post 'login/create' => 'login#create'
    get 'logout' => 'login#destroy'
    get 'login/login' => 'login#login'
    
    get 'login/facebook/:uid/:f_name/:l_name/' => 'login#fb_login'

    post 'communities/:community_id/new_post' => 'posts#create_comm', :as => 'comm_post'
    post 'events/:event_id/new_post' => 'posts#create_event', :as => 'event_post'
    post 'users/:user_id/new_post' => 'posts#create_user', :as => 'user_post'

    patch 'communities/:community_id/join' => 'communities#join_community', :as => 'join_community'
    patch 'communities/:community_id/leave' => 'communities#leave_community', :as => 'leave_community'

    patch 'users/:user_id/add_friend' => 'users#add_friend', :as => 'add_friend'
    patch 'users/:user_id/remove_friend' => 'users#remove_friend', :as => 'remove_friend'
    patch '/users/:user_id/accept_request/:request_id' => 'users#accept_request', :as => 'accept_request'
    patch '/users/:user_id/reject_request/:request_id' => 'users#reject_request', :as => 'reject_request'
    get '/users/:user_id/requests/' => 'users#requests', :as => 'requests'
    get '/users/:user_id/pending_requests' => 'users#pending_requests', :as => 'pending_requests'
    
    get '/communities/:id/posts/' => 'communities#posts', :as => 'comm_posts'
    get '/communities/:id/events/' => 'communities#events', :as => 'comm_events'
    get '/communities/:id/members/' => 'communities#members', :as => 'comm_members'
    
    get '/events/:id/going/' => 'events#going', :as => 'event_going'
    get '/events/:id/not_going/' => 'events#not_going', :as => 'event_not_going'
    get '/events/:id/posts/' => 'events#posts', :as => 'event_posts'
    
    get '/users/:id/my_friends' => 'users#my_friends', :as => 'user_my_friends'
    get '/users/:id/posts' => 'users#my_posts', :as => 'user_posts'
    get '/users/:id/my_comms' => 'users#my_communities', :as => 'user_my_comms'
    get '/users/:id/my_events' => 'users#my_events', :as => 'user_my_events'
    
    get '/posts/:id/comments/:comment_id' => 'comments#show', :as => 'comment'
    get '/posts/:id/comments' => 'posts#comments', :as => 'post_comments'
    get '/posts/:id/sender' => 'posts#sender', :as => 'post_sender'
    post '/posts/:id/' => 'comments#create', :as => 'create_comment'
  end

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
