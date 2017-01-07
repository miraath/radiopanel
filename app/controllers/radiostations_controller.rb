class RadiostationsController < ApplicationController
  before_action :set_radiostation, only: [:show, :edit, :update, :destroy]

  # GET /radiostations
  # GET /radiostations.json
  def index
    @radiostations = Radiostation.all
  end

  # GET /radiostations/1
  # GET /radiostations/1.json
  def show
  end

  # GET /radiostations/new
  def new
    @radiostation = Radiostation.new
  end

  # GET /radiostations/1/edit
  def edit
  end

  # POST /radiostations
  # POST /radiostations.json
  def create
    @radiostation = Radiostation.new(radiostation_params)

    respond_to do |format|
      if @radiostation.save
        format.html { redirect_to @radiostation, notice: 'Radiostation was successfully created.' }
        format.json { render :show, status: :created, location: @radiostation }
      else
        format.html { render :new }
        format.json { render json: @radiostation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiostations/1
  # PATCH/PUT /radiostations/1.json
  def update
    respond_to do |format|
      if @radiostation.update(radiostation_params)
        format.html { redirect_to @radiostation, notice: 'Radiostation was successfully updated.' }
        format.json { render :show, status: :ok, location: @radiostation }
      else
        format.html { render :edit }
        format.json { render json: @radiostation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiostations/1
  # DELETE /radiostations/1.json
  def destroy
    @radiostation.destroy
    respond_to do |format|
      format.html { redirect_to radiostations_url, notice: 'Radiostation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiostation
      @radiostation = Radiostation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radiostation_params
      params.require(:radiostation).permit(:streaming_url, :name, :logo, :description, :active, :online)
    end
end
