
![china_cities](https://github.com/sharp/china_cities/blob/master/city.png)

## Installation

Add this line to your application's Gemfile:

    gem 'china_cities'


And then execute:

    bundle

## Usage

#### Run generator:

    rails g china_cities install
    rake db:migrate


#### Add these lines to app/assets/javascripts/application.js

    //= require 'jquery.china_cities'
    $('.cities-select').china_city('by_name')

Notice：`by_name` means it will generate the options with the city name value, and you can choose `by_id` and `by_code` as well.


#### Update config/routes.rb

    mount ChinaCities::Engine => '/china_cities'


#### In your view add:

```
  .cities-select
      = f.select :province, options_for_select(ChinaCity.provinces.map{|city|[city.name,city.name]}), { include_blank: 'please select' }, {class: 'city-select'}
      = f.select :city, [], { include_blank: 'please select' }, {class: 'city-select'}
      = f.select :district, [], { include_blank: 'please select' }, {class: 'city-select'}

```

#### Modile support (optional)

If you want to put a city list file to your app, you can download by the url: `/china_cities/json_file.json`


LICENSE.
-------------------------

This project rocks and uses MIT-LICENSE.
