get '/', to: 'cars#index'
resources :cars, only: [:index, :show]