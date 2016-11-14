Rails.application.routes.draw do
  root 'inicio#index'

  get 'inicio/index'  
  get 'persona/index'
end
