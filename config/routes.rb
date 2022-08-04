Rails.application.routes.draw do
  devise_for :users
  resources :projects do
    resources :tasks, except: [:index], controller: "projects/tasks"
  end
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "blog", to: redirect("http://jordanhudgens.com")
  get "error", to: "pages#error"
  root "pages#home"
  get "*path", to: redirect("error")
end
