class Api::GiphysController < ApplicationController

  def index
    response = HTTP.get("http://api.giphy.com/v1/gifs/search?q=#{params[:search]}&api_key=#{Rails.application.credentials.giphy_api[:api_key]}&limit=5").parse["data"][0]["url"]
    render json: response
  end
end
