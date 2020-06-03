class PropertiesController < ApplicationController
  before_action :set_property, only: %i(show)
  def index
    @properties = Property.all.order(created_at: :ASC)
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.new(get_params)
    if property.save
      redirect_to properties_path, notice: "物件を登録しました。"
    end
  end

  def show
  end

  private
  def set_property
    @property = Property.find_by(id: params[:id])
  end

  def get_params
    params.require(:property).permit(:name,:rent,:place,:old,:comment)
  end
end
