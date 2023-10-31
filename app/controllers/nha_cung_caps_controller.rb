class NhaCungCapsController < ApplicationController
  before_action :set_nha_cung_cap, only: [:show, :edit, :update, :destroy]

  def index
    @nha_cung_caps = NhaCungCap.all
  end

  def show
  end

  def new
    @nha_cung_cap = NhaCungCap.new
  end

  def edit
  end

  def create
    @nha_cung_cap = NhaCungCap.new(nha_cung_cap_params)

    if @nha_cung_cap.save
      redirect_to @nha_cung_cap, notice: 'Nha cung cap was successfully created.'
    else
      render :new
    end
  end

  def update
    if @nha_cung_cap.update(nha_cung_cap_params)
      redirect_to @nha_cung_cap, notice: 'Nha cung cap was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @nha_cung_cap.destroy
    redirect_to nha_cung_caps_url, notice: 'Nha cung cap was successfully destroyed.'
  end

  private

  def set_nha_cung_cap
    @nha_cung_cap = NhaCungCap.find(params[:id])
  end

  def nha_cung_cap_params
    params.require(:nha_cung_cap).permit(:MaNCC, :TenNCC, :SDT, :Fax, :DiaChi, :MaHD)
  end
end
