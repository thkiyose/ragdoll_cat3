class PropertiesController < ApplicationController
  def index
    @properties = Property.all.order(created_at: :ASC)
  end
end
