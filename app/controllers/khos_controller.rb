class KhosController < ApplicationController
  before_action :set_kho, only: [:show, :edit, :update, :destroy]

  def index
    @khos = Kho.all
  end

  def show
  end

  def new
    @kho = Kho.new
  end

  def edit
  end

  def create
    @kho = Kho.new(kho_params)

    if @kho.save
      redirect_to @kho, notice: 'Kho was successfully created.'
    else
      render :new
    end
  end

  def update
    if @kho.update(kho_params)
      redirect_to @kho, notice: 'Kho was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @kho.destroy if @kho
    redirect_to khos_url, notice: 'Kho was successfully destroyed.'
  end

  private

  def set_kho
    @kho = Kho.find(params[:id])
  end

  def kho_params
    params.require(:kho).permit(:MaKho, :MaQL, :TenKho, :SLTonKho)
  end
end
