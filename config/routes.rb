Spree::Core::Engine.routes.draw do
  resources :contact_messages
  match '/contact' => 'contact_messages#new'
end
