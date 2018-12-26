class BaseController < ApplicationController
  def index
    @message =  {
      'message': 'Resource not found'
    }
    render json: @message
  end
end
