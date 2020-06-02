class LikeRankingsController < ApplicationController
  def index
    church_ids = Like.group(:church_id).order('count_church_id desc').limit(10).count(:church_id).keys
    @churches  = Church.where(id: church_ids)
  end
end
