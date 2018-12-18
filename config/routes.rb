Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # get 'grantor/:id',  to: 'grantor#reset',
      resources :grantor
    end
  end
end
