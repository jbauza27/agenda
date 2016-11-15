Rails.application.routes.draw do
  root 'inicio#index'

  # inicio
  get 'inicio/index'  
  
  # persona
  get 'persona/seleccion_pais'
  get 'persona/index'
  get 'persona/new'
  post 'persona/create'
end
