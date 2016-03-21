ChinaCities::Engine.routes.draw do
  get "by_name/:name" => "districts#by_name"
  get "by_id/:id" => "districts#by_id"
  get "by_code/:code" => "districts#by_code"
  get "json_file" => "districts#json_file"
end
