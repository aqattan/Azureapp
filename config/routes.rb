Rails.application.routes.draw do
  root "sessions#connect"
  get 'sessions/connect'

  match '/auth/:provider/callback', to: 'sessions#callback', via: [:get, :post]
  get 'sessions/auth'
end
