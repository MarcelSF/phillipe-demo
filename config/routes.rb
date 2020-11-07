Rails.application.routes.draw do
  get 'instruments', to: "instruments#index", as: :instruments
  post 'instruments', to: "instruments#create"
  get 'new', to: "instruments#new", as: :new_instrument
  get 'home', to: "pages#home", as: :home
  get 'contact', to: "pages#contact_info", as: :contact
  get 'faq', to: "pages#faq", as: :faq
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
