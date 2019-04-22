Rails.application.routes.draw do

  get 'admin' => 'admin#home'
  get 'admin/close_form'

  get 'admin/generate_matches'

  get 'admin/results'


  get '/forms' => 'forms#index'

  resources :tutors
  resources :teachers
  resources :students
  get 'forms/teacher'

  post 'forms/teacher' => 'forms#teacher'

  post 'forms/tutor' => 'forms#tutor'

  post 'forms/teacher_submit' => 'forms#teacher_submit'
  post 'forms/tutor_submit' => 'forms#tutor_submit'
  post 'forms/student_submit' => 'forms#student_submit'

  get 'forms/parent_student'

  get 'forms/tutor'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
