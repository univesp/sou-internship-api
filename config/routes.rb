Rails.application.routes.draw do
  root 'application#route_not_found'
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      # student
      get "student/process/:id", to: "student#show_student_organization_process"
      get 'student', to: 'student#show'
      get 'student/:id', to: 'student#show_student'

      # internship/process
      post 'internship/process', to: 'internship_processes#create'
      patch 'internship/process/:id', to: 'internship_processes#update'
      put 'internship/process/:id', to: 'internship_processes#update'
      delete 'internship/process/:id', to: 'internship_processes#destroy'
      get 'internship/process/:id', to: 'internship_processes#show_documents_and_organization_by_process_id'
      get 'internship/process/student/:student_id', to: 'internship_processes#show_processes_by_student'
      get 'internship/process', to: 'internship_processes#show_process_with_student_and_course'
      get 'demand/internship/process', to: 'internship_processes#show_process_by_search' 

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
