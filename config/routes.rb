Rails.application.routes.draw do
  post "/contact", to: "messages#create"
end
