Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      get "student/:id", to: "student#student_data"
      get "student/:id/processes", to: "student#processes"

      # get 'grantor/:id',  to: 'grantor#reset',
      resources :grantor, :professor, :responsible, :advisor, :process
    end
  end
end
