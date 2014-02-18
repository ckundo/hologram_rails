HologramRails::Engine.routes.draw do
  root 'styleguide#show', id: 'basics'
  get "/*id" => 'styleguide#show', as: :page, format: false
end
