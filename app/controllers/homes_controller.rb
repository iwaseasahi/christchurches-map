class HomesController < ApplicationController
  def top
    @q = Church.ransack(params[:q])
  end

  def contact; end
end
