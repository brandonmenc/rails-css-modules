class WelcomeController < ApplicationController
  def index
    @specs = [
      OpenStruct.new(title: "Storage", value: "100 gazillion bytes"),
      OpenStruct.new(title: "Speed", value: "1000 bits per minute")
    ]
  end
end
