Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'flats#index'

  # verb path, to: 'controller#action'
  get 'flats/:id', to: 'flats#show', as: :flat
end
