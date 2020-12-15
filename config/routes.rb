Rails.application.routes.draw do
  root 'birds#index'
  get '/birds' => 'birds#index'
end