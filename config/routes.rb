Rails.application.routes.draw do
  get 'welcome/index'
  
  root 'welcome#index'
  
  resources :duvidas do
    resources :respostas
  end

end
