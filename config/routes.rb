Template::Application.routes.draw do
  root :to => "widgets#index"
  get "widgets/index"
end
