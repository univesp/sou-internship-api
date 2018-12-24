Rails.application.routes.draw do
  root "base#index"
  namespace :api do
    get "/", to: "base#index"
    namespace :v1, defaults: { format: :json } do

      get "student/:id", to: "student#student_data"
      get "student/:id/processes", to: "student#processes"

      # get 'grantor/:id',  to: 'grantor#reset',
      resources :grantor, :professor, :responsible, :advisor, :process, :organization
    end
  end
end
