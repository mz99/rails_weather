class WelcomeController < ApplicationController

#index call
  def weather
    require 'open-uri'
    parsed_json = get_weather_data("Germany/Berlin")
    @berlin_full_location = parsed_json['current_observation']['display_location']['full']
    @berlin_current_temp = parsed_json['current_observation']['temp_f']
    @berlin_feels_like = parsed_json['current_observation']['feelslike_f']

    parsed_json = get_weather_data("Germany/Munich")
    @munich_full_location = parsed_json['current_observation']['display_location']['full']
    @munich_current_temp = parsed_json['current_observation']['temp_f']
    @munich_feels_like = parsed_json['current_observation']['feelslike_f']

    parsed_json = get_weather_data("Germany/Dortmund")
    @dortmund_full_location = parsed_json['current_observation']['display_location']['full']
    @dortmund_current_temp = parsed_json['current_observation']['temp_f']
    @dortmund_feels_like = parsed_json['current_observation']['feelslike_f']

    parsed_json = get_weather_data("Italy/Rome")
    @rome_full_location = parsed_json['current_observation']['display_location']['full']
    @rome_current_temp = parsed_json['current_observation']['temp_f']
    @rome_feels_like = parsed_json['current_observation']['feelslike_f']

    parsed_json = get_weather_data("Greece/Mykonos")
    @mykonos_full_location = parsed_json['current_observation']['display_location']['full']
    @mykonos_current_temp = parsed_json['current_observation']['temp_f']
    @mykonos_feels_like = parsed_json['current_observation']['feelslike_f']

    parsed_json = get_weather_data("Spain/Barcelona")
    @barcelona_full_location = parsed_json['current_observation']['display_location']['full']
    @barcelona_current_temp = parsed_json['current_observation']['temp_f']
    @barcelona_feels_like = parsed_json['current_observation']['feelslike_f']
  end

  private

  def get_weather_data(location)
    open("http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/#{location}.json") do |f|
      json_string = f.read
      JSON.parse(json_string)
    end
  end

end
