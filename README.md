
![china_cities](https://github.com/sharp/china_cities/blob/master/city.png)

## Installation

Add this line to your application's Gemfile:

    gem 'china_cities'


And then execute:

    bundle

## Usage

#### Run generator:

    rails g china install
    rake db:migrate


#### Add this line app/assets/javascripts/application.js

    //= require 'jquery.china_cities'



#### Update config/routes.rb

    mount ChinaCities::Engine => '/china_cities'


#### In your view add:

```
  .city-by-name
    .select.city-select
      = options_for_select(ChinaCity.provinces.map{|city|{city.name, city.name})
    .select.city-select
    .select.city-select

  :coffee
    $('.city-by-name').china_city('by_name')

```

Notice：`.city-by-name` means it will generate the options with the city name value, and you can choose `.city-by-id` and `.city-by-code`.


LICENSE.
-------------------------

This project rocks and uses MIT-LICENSE.
