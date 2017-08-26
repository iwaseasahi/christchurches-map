class HomesController < ApplicationController
  def top
    @q = Church.ransack(params[:q])
  end

  def likes_ranking
    church_ids = Like.group(:church_id).order('count_church_id desc').limit(10).count(:church_id).keys
    @churches  = church_ids.map { |church_id| Church.find(church_id) }
  end

  def contact; end
end
