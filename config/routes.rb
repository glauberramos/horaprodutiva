Horaprodutiva::Application.routes.draw do
  resources :tags

  resources :microtasks

  resources :projects do
    get :autocomplete_tag_name, :on => :collection
  end

  resources :projects

  root to: 'home#index'

  match "/projects" => 'projects#index', as: :projects
end
