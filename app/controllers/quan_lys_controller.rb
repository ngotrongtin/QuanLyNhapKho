class QuanLysController < ApplicationController
  before_action :set_quan_ly, only: [:show, :edit, :update, :destroy]

  def index
    @quan_lies = QuanLy.all
  end

  def show
  end

  def new
    @quan_ly = QuanLy.new
  end

  def edit
  end

  def create
    @quan_ly = QuanLy.new(quan_ly_params)

    if @quan_ly.save
      redirect_to @quan_ly, notice: 'Quan ly was successfully created.'
    else
      render :new
    end
  end

  def update
    if @quan_ly.update(quan_ly_params)
      redirect_to @quan_ly, notice: 'Quan ly was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @quan_ly.destroy
    redirect_to quan_lys_url, notice: 'Quan ly was successfully destroyed.'
  end

  private

  def set_quan_ly
    @quan_ly = QuanLy.find(params[:id])
  end

  def quan_ly_params
    params.require(:quan_ly).permit(:MaQL, :Ho, :Ten, :NgaySinh, :SDT)
  end
end
