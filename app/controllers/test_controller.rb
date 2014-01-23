class TestController < ApplicationController
  require 'json'

  def index
  	
  	attributes = {
      status: :processing,
      message: 'hello'     
    }


    render json: attributes, status: 102
  end

end
