DevApp::Application.routes.draw do
  
  scope 'api' do
    resources :assets, :projects, :posts
  end
  
  root :to => "home#index"
  match '*path', to: 'home#index' # any external path or link routes home
end
