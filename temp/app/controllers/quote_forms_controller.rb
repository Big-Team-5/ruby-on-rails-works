class QuoteFormsController < ApplicationController
  before_action :set_quote_form, only: %i[ show edit update destroy ]

  # GET /quote_forms or /quote_forms.json
  def index
    @quote_forms = QuoteForm.all
  end

  # GET /quote_forms/1 or /quote_forms/1.json
  def show
  end

  # GET /quote_forms/new
  def new
    @quote_form = QuoteForm.new
  end

  # GET /quote_forms/1/edit
  def edit
  end

  # POST /quote_forms or /quote_forms.json
  def create
    @quote_form = QuoteForm.new(quote_form_params)

    respond_to do |format|
      if @quote_form.save
        format.html { redirect_to @quote_form, notice: "Quote form was successfully created." }
        format.json { render :show, status: :created, location: @quote_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_forms/1 or /quote_forms/1.json
  def update
    respond_to do |format|
      if @quote_form.update(quote_form_params)
        format.html { redirect_to @quote_form, notice: "Quote form was successfully updated." }
        format.json { render :show, status: :ok, location: @quote_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_forms/1 or /quote_forms/1.json
  def destroy
    @quote_form.destroy
    respond_to do |format|
      format.html { redirect_to quote_forms_url, notice: "Quote form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_form
      @quote_form = QuoteForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_form_params
      params.require(:quote_form).permit(:FirstName, :LastName, :PhoneNumber, :Email, :Elevators, :Price_Per_Unit, :Sum_For_All_Units, :Installation_Fees, :Total_Price)
    end
end
