Rails.application.routes.draw do

  resources :giphys do
    collection do
      get 'search'
    end
  end
  namespace :api do
    get "/giphys" => "giphys#index"
    get "/giphys" => "giphys#search"
  end
end