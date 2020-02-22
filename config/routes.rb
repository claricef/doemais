Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  resources :ongs
  resources :pessoasjuridicas
  resources :pessoasfisicas
  resources :doadores
  root to: "posts#index"

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
