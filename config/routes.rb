Rails.application.routes.draw do
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "blog", to: redirect("http://jordanhudgens.com")
  get "error", to: "pages#error"
  resources :projects
  root "pages#home"
  get "*path", to: redirect("error")
end
