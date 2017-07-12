Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :user do
  resources :classroom, :comment
  resources :instructor_survey, only [:create, :destroy, :new] 

end



end
