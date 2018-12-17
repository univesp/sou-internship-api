class Api::V1::TesteController < ApplicationController
  def index
    @hello = "hello"
    render json: @hello
  end
end
