class DirtsController < ApplicationController
  before_action :set_dirt, only: %i[ show edit update destroy ]

  # GET /dirts or /dirts.json
  def index
    @dirts = Dirt.all
  end

  # GET /dirts/1 or /dirts/1.json
  def show
  end

  # GET /dirts/new
  def new
    @dirt = Dirt.new
  end

  # GET /dirts/1/edit
  def edit
  end

  # POST /dirts or /dirts.json
  def create
    @dirt = Dirt.new(dirt_params)

    respond_to do |format|
      if @dirt.save
        format.html { redirect_to @dirt, notice: "Dirt was successfully created." }
        format.json { render :show, status: :created, location: @dirt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dirts/1 or /dirts/1.json
  def update
    respond_to do |format|
      if @dirt.update(dirt_params)
        format.html { redirect_to @dirt, notice: "Dirt was successfully updated." }
        format.json { render :show, status: :ok, location: @dirt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dirts/1 or /dirts/1.json
  def destroy
    @dirt.destroy
    respond_to do |format|
      format.html { redirect_to dirts_url, notice: "Dirt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dirt
      @dirt = Dirt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dirt_params
      params.require(:dirt).permit(:game)
    end
end
