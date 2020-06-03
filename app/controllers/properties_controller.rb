class PropertiesController < ApplicationController
  before_action :set_property, only: %i(show edit update destroy)
  def index
    @properties = Property.all.order(created_at: :ASC)
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(get_params)
    if params[:back]
      render :new
    else
      if @property.save
        redirect_to properties_path, notice: "物件を登録しました。"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(get_params)
      redirect_to property_path(@property.id), notice: "物件を編集しました。"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "物件を削除しました。"
  end

  def confirm
    @property = Property.new(get_params)
    render :new if @property.invalid?
  end

  private
  def set_property
    @property = Property.find_by(id: params[:id])
  end

  def get_params
    params.require(:property).permit(:name,:rent,:place,:old,:comment)
  end
end
