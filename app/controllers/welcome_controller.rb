class WelcomeController < ApplicationController

  def weather
    require 'open-uri'
    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Germany/Berlin.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @full_location = parsed_json['current_observation']['display_location']['full']
      @current_temp = parsed_json['current_observation']['temp_f']
      @feels_like = parsed_json['current_observation']['feelslike_f']
    end
  end
end
