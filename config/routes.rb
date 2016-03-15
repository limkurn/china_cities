China::Engine.routes.draw do
  get "cities" => "sharp_cities#index"
  get "zones" => "sharp_zones#index"
end
