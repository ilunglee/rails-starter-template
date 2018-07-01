Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  %w[404 401 500 503].each do |code|
    get code, to: 'errors#show', code: code
  end

  root 'home#index'
end
