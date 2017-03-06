Spree::Core::Engine.add_routes do
 
  namespace :admin do
    # Using :only here so it doesn't redraw those routes
    resources :orders, :only => [] do
      resources :payments, :only => [] do
        member do
          get 'worldpay_refund'
          post 'worldpay_refund'
        end
      end
    end
  end
end