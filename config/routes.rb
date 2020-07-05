Rails.application.routes.draw do
  get 'people/index'
  get 'people/new'
  get 'people/create'
  get 'people/edit'
  get 'people/update'
  get 'people/destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'people#index'

  resources :people

end
