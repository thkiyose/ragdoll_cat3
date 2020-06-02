class PropertiesController < ApplicationController
  before_action :set_property, only: %i(show)
  def index
    @properties = Property.all.order(created_at: :ASC)
  end

  def show
  end

  private
  def set_property
    @property = Property.find_by(id: params[:id])
  end
end
