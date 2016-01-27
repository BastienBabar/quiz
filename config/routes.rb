require 'resque_web'

Rails.application.routes.draw do
  post "/contact", to: "messages#create"
  mount ResqueWeb::Engine => "/resque_web"
end
