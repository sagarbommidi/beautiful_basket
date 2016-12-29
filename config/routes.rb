Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: 'admins#dashboard', as: :admin_dashboard
  end

  constraints Clearance::Constraints::SignedIn.new { |user| user.user? } do
    root to: 'users#dashboard', as: :user_dashboard
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'clearance/sessions#new'
  end

  resources :users, only: :create
  resources :admins, only:[]
  resources :items
  resources :orders, only: [:create, :index]
  resources :carts, only: [] do
    post :add_item, on: :collection
  end
  get '/cart', to: 'carts#index'
  resources :static, only: [:index]
end
