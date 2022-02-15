class OtakusController < ApplicationController
  before_action :set_otaku, only: %i[ show edit update destroy ]

  # GET /otakus or /otakus.json
  def index
    @otakus = Otaku.all
  end

  # GET /otakus/1 or /otakus/1.json
  def show
  end

  # GET /otakus/new
  def new
    @otaku = Otaku.new
  end

  # GET /otakus/1/edit
  def edit
  end

  # POST /otakus or /otakus.json
  def create
    @otaku = Otaku.new(otaku_params)

    respond_to do |format|
      if @otaku.save
        format.html { redirect_to otaku_url(@otaku), notice: "Otaku was successfully created." }
        format.json { render :show, status: :created, location: @otaku }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @otaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otakus/1 or /otakus/1.json
  def update
    respond_to do |format|
      if @otaku.update(otaku_params)
        format.html { redirect_to otaku_url(@otaku), notice: "Otaku was successfully updated." }
        format.json { render :show, status: :ok, location: @otaku }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @otaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otakus/1 or /otakus/1.json
  def destroy
    @otaku.destroy

    respond_to do |format|
      format.html { redirect_to otakus_url, notice: "Otaku was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otaku
      @otaku = Otaku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def otaku_params
      params.require(:otaku).permit(:name, :birthday)
    end
end
