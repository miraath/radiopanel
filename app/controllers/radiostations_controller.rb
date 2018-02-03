require 'uri'
require 'net/http'

class RadiostationsController < ApplicationController
  before_action :set_radiostation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  caches_page :show, :index
  has_scope :country

  def index
    @radiostations = apply_scopes(Radiostation).where(active: true)
  end

  def show
  end

  def new
    @radiostation = Radiostation.new
  end

  def edit
  end

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
      params.require(:radiostation).permit(:streaming_url, :name, :logo, :description, :active, :online, :json_url, :slug, :language, :country)
    end
end
