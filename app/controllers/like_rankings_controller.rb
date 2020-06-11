class LikeRankingsController < ApplicationController
  def index
    @churches = Church.joins(:likes).group(:church_id).order('count(church_id) desc').limit(10)
  end
end
