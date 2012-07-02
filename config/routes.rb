Spree::Core::Engine.routes.prepend do
  resources :contact_messages
  match '/contact' => 'contact_messages#new', :as => 'contact'
end
