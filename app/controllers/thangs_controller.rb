class ThangsController < ApplicationController
  before_action :set_thang, only: [:show, :edit, :update, :destroy]


  def index
    @thangs = Thang.all
  end

  def show
  end

  def new
    @thang = Thang.new
  end

  def edit
  end


  def create
    @thang = Thang.create!(thang_params)

    respond_to do |format|
        format.html { redirect_to root, notice: 'Thang was successfully created.' }
        format.js
    end
  end

  def update
    @thang.update(thang_params)
    respond_to do |format|
      format.html { redirect_to @thang, notice: 'Thang was successfully updated.' }
      format.js
    end
  end

  def destroy
    @thang.destroy
    respond_to do |format|
      format.html { redirect_to thangs_url, notice: 'Thang was successfully destroyed.' }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thang
      @thang = Thang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thang_params
      params.require(:thang).permit(:name, :description)
    end
end
