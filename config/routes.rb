Rails.application.routes.draw do
  root 'application#route_not_found'
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get "student/:id", to: "student#student_data"
      get "student/:id/processes", to: "student#processes"
      
      # internship/process
      get 'internship/process', to: 'internship_processes#index'
      get 'internship/process/:id', to: 'internship_processes#show'
      post 'internship/process', to: 'internship_processes#create'
      patch 'internship/process/:id', to: 'internship_processes#update'
      put 'internship/process/:id', to: 'internship_processes#update'
      delete 'internship/process/:id', to: 'internship_processes#destroy'
      get 'internship/process/:id/organization/document', to: 'internship_processes#show_documents_and_organization_by_process_id'

      # internship/document
      get 'internship/documents', to: "internship_document#index"
      get 'internship/document/:id', to: "internship_document#show"
      post 'internship/document', to: "internship_document#create"
      patch 'internship/document/:id', to: "internship_document#update"
      put 'internship/document/:id', to: "internship_document#update"
      delete 'internship/document/:id', to: "internship_document#destroy"

      # get 'grantor/:id',  to: 'grantor#reset',
      resources :grantor, :professor, :responsible, :advisor, :process, :organization
    end
  end
  match '*unmatched_route', to: 'application#route_not_found', via: :all
end
