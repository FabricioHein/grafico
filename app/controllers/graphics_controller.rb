class GraphicsController < ApplicationController
  def index
    @male_user = User.where(gender: :male).group_by_week(:birthday).count
    @female_user = User.where(gender: :female).group_by_week(:birthday).count
  end
end
