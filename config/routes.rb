Rails.application.routes.draw do
  root 'application#route_not_found'
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get "student/:id", to: "student#student_data"
      get "student/:id/processes", to: "student#processes"
      get 'internship/process', to: 'internship_processes#index'
      get 'internship/process/:id', to: 'internship_processes#show'
      post 'internship/process', to: 'internship_processes#create'
      patch 'internship/process/:id', to: 'internship_processes#update'
      put 'internship/process/:id', to: 'internship_processes#update'
      delete 'internship/process/:id', to: 'internship_processes#destroy'
      get 'internship/process/student/:student_id', to: 'internship_processes#show_processes_by_student'
      # get 'grantor/:id',  to: 'grantor#reset',
      resources :grantor, :professor, :responsible, :advisor, :process, :organization, :internship_document
    end
  end
  match '*unmatched_route', to: 'application#route_not_found', via: :all
end
