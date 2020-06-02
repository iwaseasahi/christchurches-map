class HomesController < ApplicationController
  def index
    @q = Church.ransack(params[:q])
  end
end
