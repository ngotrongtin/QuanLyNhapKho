class HangHoasController < ApplicationController
  before_action :set_hang_hoa, only: [:show, :edit, :update, :destroy]

  def index
    @hang_hoas = HangHoa.all
  end

  def show
  end

  def new
    @hang_hoa = HangHoa.new
  end

  def edit
  end

  def create
    @hang_hoa = HangHoa.new(hang_hoa_params)

    if @hang_hoa.save
      redirect_to @hang_hoa, notice: 'Hang hoa was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hang_hoa.update(hang_hoa_params)
      redirect_to @hang_hoa, notice: 'Hang hoa was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @hang_hoa.destroy
    redirect_to hang_hoas_url, notice: 'Hang hoa was successfully destroyed.'
  end

  private

  def set_hang_hoa
    @hang_hoa = HangHoa.find(params[:id])
  end

  def hang_hoa_params
    params.require(:hang_hoa).permit(:MaHH, :TenHH, :SoLuong, :MaKho)
  end
end
