China::Engine.routes.draw do
  get "cities/:id/ajax" => "sharp_cities#ajax"
end
