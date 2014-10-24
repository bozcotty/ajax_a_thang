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
    @thang = Thang.new(thang_params)

    respond_to do |format|
      if @thang.save
        format.html { redirect_to @thang, notice: 'Thang was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @thang.update(thang_params)
        format.html { redirect_to @thang, notice: 'Thang was successfully updated.' }
        format.js
      else
        format.html { render :edit }
      end
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
