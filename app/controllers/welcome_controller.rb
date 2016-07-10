class WelcomeController < ApplicationController

  def weather
    require 'open-uri'
    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Germany/Berlin.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @berlin_full_location = parsed_json['current_observation']['display_location']['full']
      @berlin_current_temp = parsed_json['current_observation']['temp_f']
      @berlin_feels_like = parsed_json['current_observation']['feelslike_f']
    end

    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Germany/Munich.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @munich_full_location = parsed_json['current_observation']['display_location']['full']
      @munich_current_temp = parsed_json['current_observation']['temp_f']
      @munich_feels_like = parsed_json['current_observation']['feelslike_f']
    end

    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Germany/dortmund.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @dortmund_full_location = parsed_json['current_observation']['display_location']['full']
      @dortmund_current_temp = parsed_json['current_observation']['temp_f']
      @dortmund_feels_like = parsed_json['current_observation']['feelslike_f']
    end

    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Italy/rome.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @rome_full_location = parsed_json['current_observation']['display_location']['full']
      @rome_current_temp = parsed_json['current_observation']['temp_f']
      @rome_feels_like = parsed_json['current_observation']['feelslike_f']
    end

    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Greece/mykonos.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @mykonos_full_location = parsed_json['current_observation']['display_location']['full']
      @mykonos_current_temp = parsed_json['current_observation']['temp_f']
      @mykonos_feels_like = parsed_json['current_observation']['feelslike_f']
    end

    open('http://api.wunderground.com/api/b8c9cc80d5440996/geolookup/conditions/q/Spain/barcelona.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @barcelona_full_location = parsed_json['current_observation']['display_location']['full']
      @barcelona_current_temp = parsed_json['current_observation']['temp_f']
      @barcelona_feels_like = parsed_json['current_observation']['feelslike_f']
    end

  end

end
