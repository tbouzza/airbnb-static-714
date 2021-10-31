require 'open-uri'
class FlatsController < ApplicationController
  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find {|flat| params[:id].to_i == flat["id"]}
  end

  private

  def set_flats
    @flats = JSON.parse(open(URL).read)
  end
end
