class ApplicationController < ActionController::API
  def route_not_found
    render json: { error: "Resource not found!" }, status: 404
  end
end
