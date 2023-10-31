class DonNhapHangsController < ApplicationController
  before_action :set_don_nhap_hang, only: [:show, :edit, :update, :destroy]

  def index
    @don_nhap_hangs = DonNhapHang.all
  end

  def show
  end

  def new
    @don_nhap_hang = DonNhapHang.new
  end

  def edit
  end

  def create
    @don_nhap_hang = DonNhapHang.new(don_nhap_hang_params)

    if @don_nhap_hang.save
      redirect_to @don_nhap_hang, notice: 'Don nhap hang was successfully created.'
    else
      render :new
    end
  end

  def update
    if @don_nhap_hang.update(don_nhap_hang_params)
      redirect_to @don_nhap_hang, notice: 'Don nhap hang was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @don_nhap_hang.destroy
    redirect_to don_nhap_hangs_url, notice: 'Don nhap hang was successfully destroyed.'
  end

  private

  def set_don_nhap_hang
    @don_nhap_hang = DonNhapHang.find(params[:id])
  end

  def don_nhap_hang_params
    params.require(:don_nhap_hang).permit(:MaHD, :MaQL, :NgayTao, :GhiChu, :SoLuong, :DonGia, :MaHH)
  end
end
