Rails.application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new { |user| user.user? } do
    root to: 'users#dashboard', as: :user_dashboard
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'clearance/sessions#new'
  end

  resources :users, only: :create
  resources :static, only: [:index]
end
